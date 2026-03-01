import 'package:pulumi/pulumi.dart' as pulumi;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> companyName;

  ExampleStack() {
    final config = pulumi.Config();
    final value = config.require('companyName');
    companyName = pulumi.Output.create(value);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('companyName', companyName)];
  }
}
