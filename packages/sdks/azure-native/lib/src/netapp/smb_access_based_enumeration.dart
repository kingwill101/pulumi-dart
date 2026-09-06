import 'package:pulumi/pulumi.dart' as pulumi;

/// Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
enum SmbAccessBasedEnumeration implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const SmbAccessBasedEnumeration(this.wireValue);
  @override
  final String wireValue;

  static SmbAccessBasedEnumeration fromValue(String value) {
    for (final item in SmbAccessBasedEnumeration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SmbAccessBasedEnumeration value: $value');
  }
}
