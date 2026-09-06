import 'package:pulumi/pulumi.dart' as pulumi;

/// Status showing whether the server enabled infrastructure encryption.
enum InfrastructureEncryption implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

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
