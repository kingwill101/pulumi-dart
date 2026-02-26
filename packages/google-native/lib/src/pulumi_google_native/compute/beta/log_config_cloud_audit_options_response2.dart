// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_response2.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptionsResponse2 {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptionsResponse2 authorizationLoggingOptions;

  /// This is deprecated and has no effect. Do not use.
  final String logName;

  LogConfigCloudAuditOptionsResponse2({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationLoggingOptions'] = authorizationLoggingOptions.toMap();
    map['logName'] = logName;
    return map;
  }

  factory LogConfigCloudAuditOptionsResponse2.fromMap(
      Map<String, dynamic> map) {
    return LogConfigCloudAuditOptionsResponse2(
      authorizationLoggingOptions: AuthorizationLoggingOptionsResponse2.fromMap(
          (map['authorizationLoggingOptions'] as Map).cast<String, dynamic>()),
      logName: map['logName'] as String,
    );
  }
}
