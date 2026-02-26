// ignore_for_file: unused_element, unnecessary_cast

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigResponse58 {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final List<String> exemptedMembers;

  /// The log type that this config enables.
  final String logType;

  AuditLogConfigResponse58({
    required this.exemptedMembers,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exemptedMembers'] = exemptedMembers;
    map['logType'] = logType;
    return map;
  }

  factory AuditLogConfigResponse58.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigResponse58(
      exemptedMembers: (map['exemptedMembers'] as List).cast<String>(),
      logType: map['logType'] as String,
    );
  }
}
