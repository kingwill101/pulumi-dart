import 'package:pulumi/pulumi.dart' as pulumi;

class _Child1 extends pulumi.CustomResource {
  _Child1(String name, pulumi.CustomResourceOptions opts)
      : super(
            'my:module:Child-1', name, <String, pulumi.Input<dynamic>>{}, opts);
}

class _Child2 extends pulumi.CustomResource {
  _Child2(
    String name,
    pulumi.Input<String> transitiveUrn,
    pulumi.CustomResourceOptions opts,
  ) : super(
          'my:module:Child-2',
          name,
          <String, pulumi.Input<dynamic>>{'transitive_urn': transitiveUrn},
          opts,
        );
}

class A extends pulumi.ComponentResource {
  A(String name, [pulumi.ComponentResourceOptions? opts])
      : super('my:modules:A', name, <String, pulumi.Input<dynamic>>{}, opts) {
    final child1 = _Child1(
      'a-child-1',
      pulumi.CustomResourceOptions(
          parent: this, dependsOn: <pulumi.Resource>[this]),
    );
    _Child2(
      'a-child-2',
      pulumi.Input.fromOutput(child1.urn),
      pulumi.CustomResourceOptions(parent: this),
    );
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => A('a'));
}
