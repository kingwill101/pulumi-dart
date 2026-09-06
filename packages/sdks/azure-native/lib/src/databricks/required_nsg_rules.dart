import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets a value indicating whether data plane (clusters) to control plane communication happen over private endpoint. Supported values are 'AllRules' and 'NoAzureDatabricksRules'. 'NoAzureServiceRules' value is for internal use only. Not allowed in Serverless ComputeMode workspace.
enum RequiredNsgRules implements pulumi.PulumiEnum<String> {
  allRules("AllRules"),
  noAzureDatabricksRules("NoAzureDatabricksRules"),
  noAzureServiceRules("NoAzureServiceRules");

  const RequiredNsgRules(this.wireValue);
  @override
  final String wireValue;

  static RequiredNsgRules fromValue(String value) {
    for (final item in RequiredNsgRules.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequiredNsgRules value: $value');
  }
}
