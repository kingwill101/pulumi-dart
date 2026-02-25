import 'package:pulumi/pulumi.dart';

class Resource extends ComponentResource {
  Resource(String name, [ComponentResourceOptions? options])
      : super('my:module:Resource', name, null, options);
}

class ComponentThree extends ComponentResource {
  ComponentThree(String name, [ComponentResourceOptions? options])
      : super('my:module:ComponentThree', name, null, options) {
    Resource('$name-child', ComponentResourceOptions(parent: this));
    Resource('otherchild', ComponentResourceOptions(parent: this));
  }
}

void main() {
  DeploymentImpl.run(() {
    ComponentThree(
      'newcomp3',
      ComponentResourceOptions(
        aliases: [Alias(name: Input.fromValue('comp3'))],
      ),
    );
  });
}
