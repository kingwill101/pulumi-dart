import 'package:pulumi/pulumi.dart';

class Resource extends ComponentResource {
  Resource(String name, [ComponentResourceOptions? options])
      : super('my:module:Resource', name, null, options);
}

List<Alias> generateComponentSixAliases() {
  return List<Alias>.generate(
    100,
    (i) => Alias(type: Input.fromValue('my:module:ComponentSix-v$i')),
  );
}

class ComponentSix extends ComponentResource {
  ComponentSix(String name, [ComponentResourceOptions? options])
      : super(
          'my:module:ComponentSix-v100',
          name,
          null,
          ComponentResourceOptions(
            parent: options?.parent,
            aliases: [
              ...generateComponentSixAliases(),
              ...?options?.aliases,
            ],
          ),
        ) {
    Resource('otherchild', ComponentResourceOptions(parent: this));
  }
}

List<Alias> generateComponentSixParentAliases() {
  return List<Alias>.generate(
    10,
    (i) => Alias(type: Input.fromValue('my:module:ComponentSixParent-v$i')),
  );
}

class ComponentSixParent extends ComponentResource {
  ComponentSixParent(String name, [ComponentResourceOptions? options])
      : super(
          'my:module:ComponentSixParent-v10',
          name,
          null,
          ComponentResourceOptions(
            parent: options?.parent,
            aliases: [
              ...generateComponentSixParentAliases(),
              ...?options?.aliases,
            ],
          ),
        ) {
    ComponentSix('child', ComponentResourceOptions(parent: this));
  }
}

void main() {
  DeploymentImpl.run(() {
    ComponentSixParent('comp6');
  });
}
