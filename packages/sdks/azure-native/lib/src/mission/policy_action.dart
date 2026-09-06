import 'package:pulumi/pulumi.dart' as pulumi;

/// Enforcement mode for policy. AuditOnly, Enforce, or None.
enum PolicyAction implements pulumi.PulumiEnum<String> {
  valueAuditOnly("AuditOnly"),
  valueEnforce("Enforce"),
  valueNone("None");

  const PolicyAction(this.wireValue);
  @override
  final String wireValue;

  static PolicyAction fromValue(String value) {
    for (final item in PolicyAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyAction value: $value');
  }
}
