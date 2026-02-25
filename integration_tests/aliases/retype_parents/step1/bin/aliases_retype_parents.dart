import 'package:pulumi/pulumi.dart';

class Resource extends ComponentResource {
  Resource(String name, [ComponentResourceOptions? options])
      : super('my:module:Resource', name, null, options);
}

class ComponentSix extends ComponentResource {
  ComponentSix(String name, [ComponentResourceOptions? options])
      : super('my:module:ComponentSix-v0', name, null, options) {
    Resource('otherchild', ComponentResourceOptions(parent: this));
  }
}

class ComponentSixParent extends ComponentResource {
  ComponentSixParent(String name, [ComponentResourceOptions? options])
      : super('my:module:ComponentSixParent-v0', name, null, options) {
    ComponentSix('child', ComponentResourceOptions(parent: this));
  }
}

void main() {
  DeploymentImpl.run(() {
    ComponentSixParent('comp6');
  });
}
