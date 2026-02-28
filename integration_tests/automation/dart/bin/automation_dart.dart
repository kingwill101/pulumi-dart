import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationFixtureStack extends pulumi.Stack {
  late final pulumi.Output<Object?> status;

  AutomationFixtureStack() {
    status = pulumi.output('ok').apply<Object?>((value) => value);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return <pulumi.OutputProperty>[pulumi.OutputProperty('status', status)];
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => AutomationFixtureStack());
}
