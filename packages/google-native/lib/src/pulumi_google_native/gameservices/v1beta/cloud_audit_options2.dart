// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options5.dart';
import 'cloud_audit_options_log_name2.dart';

/// Write a Cloud Audit log
class CloudAuditOptions2 {
  /// Information used by the Cloud Audit Logging pipeline.
  final AuthorizationLoggingOptions5? authorizationLoggingOptions;

  /// The log_name to populate in the Cloud Audit Record.
  final CloudAuditOptionsLogName2? logName;

  CloudAuditOptions2({
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

  factory CloudAuditOptions2.fromMap(Map<String, dynamic> map) {
    return CloudAuditOptions2(
      authorizationLoggingOptions: map['authorizationLoggingOptions'] == null
          ? null
          : AuthorizationLoggingOptions5.fromMap(
              (map['authorizationLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      logName: map['logName'] == null
          ? null
          : CloudAuditOptionsLogName2.fromValue(map['logName'] as String),
    );
  }
}
