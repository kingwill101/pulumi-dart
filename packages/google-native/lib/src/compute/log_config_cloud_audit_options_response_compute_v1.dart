// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_response_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptionsResponseComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptionsResponseComputeV1
      authorizationLoggingOptions;

  /// This is deprecated and has no effect. Do not use.
  final String logName;

  /// Creates a new [LogConfigCloudAuditOptionsResponseComputeV1].
  /// [authorizationLoggingOptions] This is deprecated and has no effect. Do not use.
  /// [logName] This is deprecated and has no effect. Do not use.
  LogConfigCloudAuditOptionsResponseComputeV1({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationLoggingOptions'] = authorizationLoggingOptions.toMap();
    map['logName'] = logName;
    return map;
  }

  factory LogConfigCloudAuditOptionsResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return LogConfigCloudAuditOptionsResponseComputeV1(
      authorizationLoggingOptions:
          AuthorizationLoggingOptionsResponseComputeV1.fromMap(
              (map['authorizationLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      logName: map['logName'] as String,
    );
  }
}
