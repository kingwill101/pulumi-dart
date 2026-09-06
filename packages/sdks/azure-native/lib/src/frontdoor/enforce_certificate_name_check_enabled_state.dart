import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to enforce certificate name check on HTTPS requests to all backend pools. No effect on non-HTTPS requests.
enum EnforceCertificateNameCheckEnabledState implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const EnforceCertificateNameCheckEnabledState(this.wireValue);
  @override
  final String wireValue;

  static EnforceCertificateNameCheckEnabledState fromValue(String value) {
    for (final item in EnforceCertificateNameCheckEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnforceCertificateNameCheckEnabledState value: $value');
  }
}
