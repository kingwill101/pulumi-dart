import 'package:pulumi/pulumi.dart';

Output<T> outputWithDependencies<T>(T value, Set<Resource> resources) {
  return Output(
    Future.value(
      OutputData<T>(
        value: value,
        isKnown: true,
        isSecret: false,
        resources: resources,
      ),
    ),
  );
}

String componentUrn(String stack, String project, String name) {
  return 'urn:pulumi:$stack::$project::testcomponent:index:Component::$name';
}

String componentChildResourceUrn(
  String stack,
  String project,
  String parentName,
) {
  return 'urn:pulumi:$stack::$project::testcomponent:index:Component\$testcomponent:index:Resource::child-$parentName';
}

class Component extends ComponentResource {
  Component(String name, Input<dynamic> echo, [ComponentResourceOptions? opts])
      : super('testcomponent:index:Component', name, {'echo': echo}, opts,
            remote: true);
}

class SecondComponent extends ComponentResource {
  SecondComponent(
    String name,
    Input<dynamic> echo, [
    ComponentResourceOptions? opts,
  ]) : super('secondtestcomponent:index:Component', name, {'echo': echo}, opts,
            remote: true);
}

class ComponentComponent extends ComponentResource {
  ComponentComponent(String name, [ComponentResourceOptions? opts])
      : super(
          'secondtestcomponent:index:ComponentComponent',
          name,
          {},
          opts,
          remote: true,
        );
}

class LocalComponent extends ComponentResource {
  LocalComponent(String name, [ComponentResourceOptions? opts])
      : super('pkg:index:LocalComponent', name, {}, opts);
}

class MyStack extends Stack {
  MyStack() {
    final deployment = DeploymentImpl.instance;
    final project = deployment.projectName;
    final stack = deployment.stackName;

    final aDependency = DependencyResource(componentUrn(stack, project, 'a'));
    final childADependency = DependencyResource(
      componentChildResourceUrn(stack, project, 'a'),
    );

    final componentA = Component('a', Input.fromValue(42));

    Component(
      'b',
      Input.fromOutput(outputWithDependencies<dynamic>(42, {aDependency})),
      ComponentResourceOptions(dependsOn: [componentA]),
    );

    Component(
      'c',
      Input.fromOutput(
        outputWithDependencies<dynamic>(
            'child-a-id', {aDependency, childADependency}),
      ),
      ComponentResourceOptions(dependsOn: [componentA]),
    );

    final provider = ProviderResource(
        'testcomponent',
        'provider',
        {
          'expectResourceArg': Input.fromValue(true),
        },
        null);

    final localComponent = LocalComponent(
      'localComponent',
      ComponentResourceOptions(providers: [provider]),
    );

    final parentProvider = ComponentResourceOptions(parent: localComponent);

    Component(
        'checkProvider1', Input.fromValue('checkExpected'), parentProvider);
    SecondComponent(
      'checkProvider2',
      Input.fromValue('checkExpected'),
      parentProvider,
    );
    ComponentComponent('checkProvider12', parentProvider);
  }
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() => MyStack());

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
