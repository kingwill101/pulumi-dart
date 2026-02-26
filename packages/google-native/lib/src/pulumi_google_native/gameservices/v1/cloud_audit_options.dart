// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options4.dart';
import 'cloud_audit_options_log_name.dart';

/// Write a Cloud Audit log
class CloudAuditOptions {
  /// Information used by the Cloud Audit Logging pipeline.
  final AuthorizationLoggingOptions4? authorizationLoggingOptions;

  /// The log_name to populate in the Cloud Audit Record.
  final CloudAuditOptionsLogName? logName;

  CloudAuditOptions({
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

  factory CloudAuditOptions.fromMap(Map<String, dynamic> map) {
    return CloudAuditOptions(
      authorizationLoggingOptions: map['authorizationLoggingOptions'] == null
          ? null
          : AuthorizationLoggingOptions4.fromMap(
              (map['authorizationLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      logName: map['logName'] == null
          ? null
          : CloudAuditOptionsLogName.fromValue(map['logName'] as String),
    );
  }
}
