// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options2.dart';
import 'log_config_cloud_audit_options_log_name2.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptions2 {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptions2? authorizationLoggingOptions;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptionsLogName2? logName;

  LogConfigCloudAuditOptions2({
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

  factory LogConfigCloudAuditOptions2.fromMap(Map<String, dynamic> map) {
    return LogConfigCloudAuditOptions2(
      authorizationLoggingOptions: map['authorizationLoggingOptions'] == null
          ? null
          : AuthorizationLoggingOptions2.fromMap(
              (map['authorizationLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      logName: map['logName'] == null
          ? null
          : LogConfigCloudAuditOptionsLogName2.fromValue(
              map['logName'] as String),
    );
  }
}
