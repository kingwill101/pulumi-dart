// ignore_for_file: unused_element, unnecessary_cast

import 'audit_log_config_log_type_domains_v1.dart';

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigDomainsV1 {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final List<String>? exemptedMembers;

  /// The log type that this config enables.
  final AuditLogConfigLogTypeDomainsV1? logType;

  AuditLogConfigDomainsV1({
    this.exemptedMembers,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exemptedMembersValue = exemptedMembers;
    if (exemptedMembersValue != null) {
      map['exemptedMembers'] = exemptedMembersValue;
    }
    final logTypeValue = logType;
    if (logTypeValue != null) {
      map['logType'] = logTypeValue.value;
    }
    return map;
  }

  factory AuditLogConfigDomainsV1.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigDomainsV1(
      exemptedMembers: map['exemptedMembers'] == null
          ? null
          : (map['exemptedMembers'] as List).cast<String>(),
      logType: map['logType'] == null
          ? null
          : AuditLogConfigLogTypeDomainsV1.fromValue(map['logType'] as String),
    );
  }
}
