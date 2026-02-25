import 'package:pulumi/pulumi.dart';

class Resource extends ComponentResource {
  Resource(String name, [ComponentResourceOptions? options])
      : super('my:module:Resource', name, null, options);
}

class ComponentFive extends ComponentResource {
  ComponentFive(String name, [ComponentResourceOptions? options])
      : super('my:module:ComponentFive', name, null, options) {
    Resource('otherchild', ComponentResourceOptions(parent: this));
  }
}

void main() {
  DeploymentImpl.run(() {
    ComponentFive('comp5');
  });
}
