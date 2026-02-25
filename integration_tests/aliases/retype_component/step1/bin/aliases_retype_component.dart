import 'package:pulumi/pulumi.dart';

class Resource extends ComponentResource {
  Resource(String name, [ComponentResourceOptions? options])
      : super('my:module:Resource', name, null, options);
}

class ComponentFour extends ComponentResource {
  ComponentFour(String name, [ComponentResourceOptions? options])
      : super('my:module:ComponentFour', name, null, options) {
    Resource('otherchild', ComponentResourceOptions(parent: this));
  }
}

void main() {
  DeploymentImpl.run(() {
    ComponentFour('comp4');
  });
}
