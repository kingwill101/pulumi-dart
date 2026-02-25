import 'package:pulumi/pulumi.dart';

class Resource extends ComponentResource {
  Resource(String name, [ComponentResourceOptions? options])
      : super('my:module:Resource', name, null, options);
}

class ComponentFour extends ComponentResource {
  ComponentFour(String name, [ComponentResourceOptions? options])
      : super(
          'my:differentmodule:ComponentFourWithADifferentTypeName',
          name,
          null,
          ComponentResourceOptions(
            parent: options?.parent,
            aliases: [
              Alias(type: Input.fromValue('my:module:ComponentFour')),
              ...?options?.aliases,
            ],
          ),
        ) {
    Resource('otherchild', ComponentResourceOptions(parent: this));
  }
}

void main() {
  DeploymentImpl.run(() {
    ComponentFour('comp4');
  });
}
