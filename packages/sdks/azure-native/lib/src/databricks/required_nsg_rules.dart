/// Gets or sets a value indicating whether data plane (clusters) to control plane communication happen over private endpoint. Supported values are 'AllRules' and 'NoAzureDatabricksRules'. 'NoAzureServiceRules' value is for internal use only.
enum RequiredNsgRules {
  valueAllRules("AllRules"),
  valueNoAzureDatabricksRules("NoAzureDatabricksRules"),
  valueNoAzureServiceRules("NoAzureServiceRules");

  const RequiredNsgRules(this.wireValue);
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

