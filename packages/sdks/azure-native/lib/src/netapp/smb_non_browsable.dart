import 'package:pulumi/pulumi.dart' as pulumi;

/// Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
enum SmbNonBrowsable implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const SmbNonBrowsable(this.wireValue);
  @override
  final String wireValue;

  static SmbNonBrowsable fromValue(String value) {
    for (final item in SmbNonBrowsable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SmbNonBrowsable value: $value');
  }
}
