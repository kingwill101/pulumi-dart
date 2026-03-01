/// The target service type.
enum TargetServiceType {
  valueAzureResource("AzureResource"),
  valueConfluentBootstrapServer("ConfluentBootstrapServer"),
  valueConfluentSchemaRegistry("ConfluentSchemaRegistry"),
  valueSelfHostedServer("SelfHostedServer");

  const TargetServiceType(this.value);
  final String value;

  static TargetServiceType fromValue(String value) {
    for (final item in TargetServiceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetServiceType value: $value');
  }
}

