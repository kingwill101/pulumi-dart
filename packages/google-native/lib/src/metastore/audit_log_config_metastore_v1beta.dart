// ignore_for_file: unused_element, unnecessary_cast

import 'audit_log_config_log_type_metastore_v1beta.dart';

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigMetastoreV1beta {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final List<String>? exemptedMembers;
  /// The log type that this config enables.
  final AuditLogConfigLogTypeMetastoreV1beta? logType;

  /// Creates a new [AuditLogConfigMetastoreV1beta].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [logType] The log type that this config enables.
  AuditLogConfigMetastoreV1beta({
    this.exemptedMembers,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'logType': ?logType == null ? null : logType!.value,
    };
  }

  factory AuditLogConfigMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigMetastoreV1beta(
      exemptedMembers: map['exemptedMembers'] == null ? null : (map['exemptedMembers'] as List).cast<String>(),
      logType: map['logType'] == null ? null : AuditLogConfigLogTypeMetastoreV1beta.fromValue(map['logType'] as String),
    );
  }
}

