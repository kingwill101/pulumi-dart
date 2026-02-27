// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_response_gameservices_v1.dart';

/// Write a Cloud Audit log
class CloudAuditOptionsResponse {
  /// Information used by the Cloud Audit Logging pipeline.
  final AuthorizationLoggingOptionsResponseGameservicesV1
      authorizationLoggingOptions;

  /// The log_name to populate in the Cloud Audit Record.
  final String logName;

  CloudAuditOptionsResponse({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationLoggingOptions'] = authorizationLoggingOptions.toMap();
    map['logName'] = logName;
    return map;
  }

  factory CloudAuditOptionsResponse.fromMap(Map<String, dynamic> map) {
    return CloudAuditOptionsResponse(
      authorizationLoggingOptions:
          AuthorizationLoggingOptionsResponseGameservicesV1.fromMap(
              (map['authorizationLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      logName: map['logName'] as String,
    );
  }
}
