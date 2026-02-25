import 'package:pulumi/pulumi.dart';

class FooArgs {
  final Input<String> something;

  FooArgs({required this.something});

  Map<String, dynamic> toMap() {
    return {'something': something};
  }
}

class BarArgs {
  final Input<Map<String, dynamic>> tags;

  BarArgs({required this.tags});

  Map<String, dynamic> toMap() {
    return {'tags': tags};
  }
}

class Component extends ComponentResource {
  Component(String name, FooArgs foo, BarArgs bar, [ComponentResourceOptions? options])
    : super(
        'testcomponent:index:Component',
        name,
        {
          'foo': Input.fromValue(foo.toMap()),
          'bar': Input.fromValue(bar.toMap()),
        },
        options,
        remote: true,
      );
}

class MyStack extends Stack {
  MyStack() {
    final secretValue = Input.fromOutput(
      Output.createSecret(Output.create('shh')),
    );

    Component(
      'component',
      FooArgs(something: Input.fromValue('hello')),
      BarArgs(
        tags: Input.fromValue({'a': 'world', 'b': secretValue}),
      ),
    );

    registerOutputs({});
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
