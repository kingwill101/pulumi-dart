// ignore_for_file: unused_element, unnecessary_cast

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigResponseMetastoreV1alpha {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final List<String> exemptedMembers;

  /// The log type that this config enables.
  final String logType;

  /// Creates a new [AuditLogConfigResponseMetastoreV1alpha].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [logType] The log type that this config enables.
  AuditLogConfigResponseMetastoreV1alpha({
    required this.exemptedMembers,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exemptedMembers'] = exemptedMembers;
    map['logType'] = logType;
    return map;
  }

  factory AuditLogConfigResponseMetastoreV1alpha.fromMap(
      Map<String, dynamic> map) {
    return AuditLogConfigResponseMetastoreV1alpha(
      exemptedMembers: (map['exemptedMembers'] as List).cast<String>(),
      logType: map['logType'] as String,
    );
  }
}
