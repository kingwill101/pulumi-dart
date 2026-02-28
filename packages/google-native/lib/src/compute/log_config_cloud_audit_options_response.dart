// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_response.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptionsResponse {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptionsResponse authorizationLoggingOptions;

  /// This is deprecated and has no effect. Do not use.
  final String logName;

  /// Creates a new [LogConfigCloudAuditOptionsResponse].
  /// [authorizationLoggingOptions] This is deprecated and has no effect. Do not use.
  /// [logName] This is deprecated and has no effect. Do not use.
  LogConfigCloudAuditOptionsResponse({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationLoggingOptions'] = authorizationLoggingOptions.toMap();
    map['logName'] = logName;
    return map;
  }

  factory LogConfigCloudAuditOptionsResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigCloudAuditOptionsResponse(
      authorizationLoggingOptions: AuthorizationLoggingOptionsResponse.fromMap(
          (map['authorizationLoggingOptions'] as Map).cast<String, dynamic>()),
      logName: map['logName'] as String,
    );
  }
}
