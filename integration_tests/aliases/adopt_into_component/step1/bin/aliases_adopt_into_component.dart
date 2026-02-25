import 'package:pulumi/pulumi.dart';

class Resource extends ComponentResource {
  Resource(String name, [ComponentResourceOptions? options])
      : super('my:module:Resource', name, null, options);
}

class Component extends ComponentResource {
  Component(String name, [ComponentResourceOptions? options])
      : super('my:module:Component', name, null, options);
}

class Component2 extends ComponentResource {
  Component2(String name, [ComponentResourceOptions? options])
      : super('my:module:Component2', name, null, options);
}

class Component3 extends ComponentResource {
  Component3(String name, [ComponentResourceOptions? options])
      : super('my:module:Component3', name, null, options) {
    Component2('$name-child', options);
  }
}

class Component4 extends ComponentResource {
  Component4(String name, [ComponentResourceOptions? options])
      : super('my:module:Component4', name, null, options);
}

void main() {
  DeploymentImpl.run(() {
    Resource('res2');
    final comp2 = Component('comp2');

    Component2('unparented');

    Component3('parentedbystack');
    Component3('parentedbycomponent', ComponentResourceOptions(parent: comp2));

    Component4('duplicateAliases', ComponentResourceOptions(parent: comp2));
  });
}
