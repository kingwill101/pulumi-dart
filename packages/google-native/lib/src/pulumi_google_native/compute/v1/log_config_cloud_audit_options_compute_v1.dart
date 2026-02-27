// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_compute_v1.dart';
import 'log_config_cloud_audit_options_log_name_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptionsComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptionsComputeV1? authorizationLoggingOptions;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptionsLogNameComputeV1? logName;

  LogConfigCloudAuditOptionsComputeV1({
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

  factory LogConfigCloudAuditOptionsComputeV1.fromMap(
      Map<String, dynamic> map) {
    return LogConfigCloudAuditOptionsComputeV1(
      authorizationLoggingOptions: map['authorizationLoggingOptions'] == null
          ? null
          : AuthorizationLoggingOptionsComputeV1.fromMap(
              (map['authorizationLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      logName: map['logName'] == null
          ? null
          : LogConfigCloudAuditOptionsLogNameComputeV1.fromValue(
              map['logName'] as String),
    );
  }
}
