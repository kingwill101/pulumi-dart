// ignore_for_file: unused_element, unnecessary_cast

import 'audit_log_config_log_type_gameservices_v1beta.dart';

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigGameservicesV1beta {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final List<String>? exemptedMembers;
  final bool? ignoreChildExemptions;

  /// The log type that this config enables.
  final AuditLogConfigLogTypeGameservicesV1beta? logType;

  AuditLogConfigGameservicesV1beta({
    this.exemptedMembers,
    this.ignoreChildExemptions,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exemptedMembersValue = exemptedMembers;
    if (exemptedMembersValue != null) {
      map['exemptedMembers'] = exemptedMembersValue;
    }
    final ignoreChildExemptionsValue = ignoreChildExemptions;
    if (ignoreChildExemptionsValue != null) {
      map['ignoreChildExemptions'] = ignoreChildExemptionsValue;
    }
    final logTypeValue = logType;
    if (logTypeValue != null) {
      map['logType'] = logTypeValue.value;
    }
    return map;
  }

  factory AuditLogConfigGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigGameservicesV1beta(
      exemptedMembers: map['exemptedMembers'] == null
          ? null
          : (map['exemptedMembers'] as List).cast<String>(),
      ignoreChildExemptions: map['ignoreChildExemptions'] == null
          ? null
          : map['ignoreChildExemptions'] as bool,
      logType: map['logType'] == null
          ? null
          : AuditLogConfigLogTypeGameservicesV1beta.fromValue(
              map['logType'] as String),
    );
  }
}
