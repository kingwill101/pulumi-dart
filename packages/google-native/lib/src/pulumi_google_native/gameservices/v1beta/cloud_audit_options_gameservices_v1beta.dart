// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_gameservices_v1beta.dart';
import 'cloud_audit_options_log_name_gameservices_v1beta.dart';

/// Write a Cloud Audit log
class CloudAuditOptionsGameservicesV1beta {
  /// Information used by the Cloud Audit Logging pipeline.
  final AuthorizationLoggingOptionsGameservicesV1beta?
      authorizationLoggingOptions;

  /// The log_name to populate in the Cloud Audit Record.
  final CloudAuditOptionsLogNameGameservicesV1beta? logName;

  CloudAuditOptionsGameservicesV1beta({
    this.authorizationLoggingOptions,
    this.logName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizationLoggingOptionsValue = authorizationLoggingOptions;
    if (authorizationLoggingOptionsValue != null) {
      map['authorizationLoggingOptions'] =
          authorizationLoggingOptionsValue.toMap();
    }
    final logNameValue = logName;
    if (logNameValue != null) {
      map['logName'] = logNameValue.value;
    }
    return map;
  }

  factory CloudAuditOptionsGameservicesV1beta.fromMap(
      Map<String, dynamic> map) {
    return CloudAuditOptionsGameservicesV1beta(
      authorizationLoggingOptions: map['authorizationLoggingOptions'] == null
          ? null
          : AuthorizationLoggingOptionsGameservicesV1beta.fromMap(
              (map['authorizationLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      logName: map['logName'] == null
          ? null
          : CloudAuditOptionsLogNameGameservicesV1beta.fromValue(
              map['logName'] as String),
    );
  }
}
