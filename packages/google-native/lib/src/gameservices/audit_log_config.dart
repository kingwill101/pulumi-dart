// ignore_for_file: unused_element, unnecessary_cast

import 'audit_log_config_log_type.dart';

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final List<String>? exemptedMembers;
  final bool? ignoreChildExemptions;
  /// The log type that this config enables.
  final AuditLogConfigLogType? logType;

  /// Creates a new [AuditLogConfig].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [ignoreChildExemptions] Optional.
  /// [logType] The log type that this config enables.
  AuditLogConfig({
    this.exemptedMembers,
    this.ignoreChildExemptions,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'ignoreChildExemptions': ?ignoreChildExemptions,
      'logType': ?logType == null ? null : logType!.value,
    };
  }

  factory AuditLogConfig.fromMap(Map<String, dynamic> map) {
    return AuditLogConfig(
      exemptedMembers: map['exemptedMembers'] == null ? null : (map['exemptedMembers'] as List).cast<String>(),
      ignoreChildExemptions: map['ignoreChildExemptions'] == null ? null : map['ignoreChildExemptions'] as bool,
      logType: map['logType'] == null ? null : AuditLogConfigLogType.fromValue(map['logType'] as String),
    );
  }
}

