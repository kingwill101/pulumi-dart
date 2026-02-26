// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options3.dart';
import 'log_config_cloud_audit_options_log_name3.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptions3 {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptions3? authorizationLoggingOptions;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptionsLogName3? logName;

  LogConfigCloudAuditOptions3({
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

  factory LogConfigCloudAuditOptions3.fromMap(Map<String, dynamic> map) {
    return LogConfigCloudAuditOptions3(
      authorizationLoggingOptions: map['authorizationLoggingOptions'] == null
          ? null
          : AuthorizationLoggingOptions3.fromMap(
              (map['authorizationLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      logName: map['logName'] == null
          ? null
          : LogConfigCloudAuditOptionsLogName3.fromValue(
              map['logName'] as String),
    );
  }
}
