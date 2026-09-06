import 'package:pulumi/pulumi.dart' as pulumi;

/// Enabling/Disabling the Double Encryption state
enum InfrastructureEncryptionState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const InfrastructureEncryptionState(this.wireValue);
  @override
  final String wireValue;

  static InfrastructureEncryptionState fromValue(String value) {
    for (final item in InfrastructureEncryptionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InfrastructureEncryptionState value: $value');
  }
}
