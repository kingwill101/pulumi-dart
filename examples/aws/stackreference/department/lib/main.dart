import 'package:pulumi/pulumi.dart' as pulumi;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> departmentName;

  ExampleStack() {
    final config = pulumi.Config();
    final value = config.require('departmentName');
    departmentName = pulumi.Output.create(value);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('departmentName', departmentName)];
  }
}
