import 'package:pulumi/pulumi.dart' as pulumi;

/// (Optional) Discouraged to include in resource definition. Only needed where it is possible to disable platform (AKA infrastructure) encryption. Azure SQL TDE is an example of this. Values are enabled and disabled.
enum InfrastructureEncryption implements pulumi.PulumiEnum<String> {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const InfrastructureEncryption(this.wireValue);
  @override
  final String wireValue;

  static InfrastructureEncryption fromValue(String value) {
    for (final item in InfrastructureEncryption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InfrastructureEncryption value: $value');
  }
}
