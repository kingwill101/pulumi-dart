// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_response_gameservices_v1beta.dart';

/// Write a Cloud Audit log
class CloudAuditOptionsResponseGameservicesV1beta {
  /// Information used by the Cloud Audit Logging pipeline.
  final AuthorizationLoggingOptionsResponseGameservicesV1beta
      authorizationLoggingOptions;

  /// The log_name to populate in the Cloud Audit Record.
  final String logName;

  CloudAuditOptionsResponseGameservicesV1beta({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationLoggingOptions'] = authorizationLoggingOptions.toMap();
    map['logName'] = logName;
    return map;
  }

  factory CloudAuditOptionsResponseGameservicesV1beta.fromMap(
      Map<String, dynamic> map) {
    return CloudAuditOptionsResponseGameservicesV1beta(
      authorizationLoggingOptions:
          AuthorizationLoggingOptionsResponseGameservicesV1beta.fromMap(
              (map['authorizationLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      logName: map['logName'] as String,
    );
  }
}
