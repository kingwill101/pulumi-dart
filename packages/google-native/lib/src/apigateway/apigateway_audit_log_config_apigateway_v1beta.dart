// ignore_for_file: unused_element, unnecessary_cast

import 'apigateway_audit_log_config_log_type_apigateway_v1beta.dart';

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class ApigatewayAuditLogConfigApigatewayV1beta {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final List<String>? exemptedMembers;

  /// The log type that this config enables.
  final ApigatewayAuditLogConfigLogTypeApigatewayV1beta? logType;

  /// Creates a new [ApigatewayAuditLogConfigApigatewayV1beta].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [logType] The log type that this config enables.
  ApigatewayAuditLogConfigApigatewayV1beta({
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

  factory ApigatewayAuditLogConfigApigatewayV1beta.fromMap(
      Map<String, dynamic> map) {
    return ApigatewayAuditLogConfigApigatewayV1beta(
      exemptedMembers: map['exemptedMembers'] == null
          ? null
          : (map['exemptedMembers'] as List).cast<String>(),
      logType: map['logType'] == null
          ? null
          : ApigatewayAuditLogConfigLogTypeApigatewayV1beta.fromValue(
              map['logType'] as String),
    );
  }
}
