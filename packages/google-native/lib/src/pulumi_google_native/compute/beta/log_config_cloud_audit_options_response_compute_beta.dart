// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_response_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptionsResponseComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptionsResponseComputeBeta
      authorizationLoggingOptions;

  /// This is deprecated and has no effect. Do not use.
  final String logName;

  LogConfigCloudAuditOptionsResponseComputeBeta({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationLoggingOptions'] = authorizationLoggingOptions.toMap();
    map['logName'] = logName;
    return map;
  }

  factory LogConfigCloudAuditOptionsResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return LogConfigCloudAuditOptionsResponseComputeBeta(
      authorizationLoggingOptions:
          AuthorizationLoggingOptionsResponseComputeBeta.fromMap(
              (map['authorizationLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      logName: map['logName'] as String,
    );
  }
}
