// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_compute_beta.dart';
import 'log_config_cloud_audit_options_log_name_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptionsComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptionsComputeBeta? authorizationLoggingOptions;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptionsLogNameComputeBeta? logName;

  LogConfigCloudAuditOptionsComputeBeta({
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

  factory LogConfigCloudAuditOptionsComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return LogConfigCloudAuditOptionsComputeBeta(
      authorizationLoggingOptions: map['authorizationLoggingOptions'] == null
          ? null
          : AuthorizationLoggingOptionsComputeBeta.fromMap(
              (map['authorizationLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      logName: map['logName'] == null
          ? null
          : LogConfigCloudAuditOptionsLogNameComputeBeta.fromValue(
              map['logName'] as String),
    );
  }
}
