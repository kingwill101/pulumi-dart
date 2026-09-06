import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether audit logs are enabled on the connected registry.
enum AuditLogStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AuditLogStatus(this.wireValue);
  @override
  final String wireValue;

  static AuditLogStatus fromValue(String value) {
    for (final item in AuditLogStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogStatus value: $value');
  }
}
