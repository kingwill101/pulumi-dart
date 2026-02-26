// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_response5.dart';

/// Write a Cloud Audit log
class CloudAuditOptionsResponse2 {
  /// Information used by the Cloud Audit Logging pipeline.
  final AuthorizationLoggingOptionsResponse5 authorizationLoggingOptions;

  /// The log_name to populate in the Cloud Audit Record.
  final String logName;

  CloudAuditOptionsResponse2({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationLoggingOptions'] = authorizationLoggingOptions.toMap();
    map['logName'] = logName;
    return map;
  }

  factory CloudAuditOptionsResponse2.fromMap(Map<String, dynamic> map) {
    return CloudAuditOptionsResponse2(
      authorizationLoggingOptions: AuthorizationLoggingOptionsResponse5.fromMap(
          (map['authorizationLoggingOptions'] as Map).cast<String, dynamic>()),
      logName: map['logName'] as String,
    );
  }
}
