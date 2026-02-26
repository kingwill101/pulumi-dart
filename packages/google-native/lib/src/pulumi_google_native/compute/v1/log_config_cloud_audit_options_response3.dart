// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options_response3.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptionsResponse3 {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptionsResponse3 authorizationLoggingOptions;

  /// This is deprecated and has no effect. Do not use.
  final String logName;

  LogConfigCloudAuditOptionsResponse3({
    required this.authorizationLoggingOptions,
    required this.logName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationLoggingOptions'] = authorizationLoggingOptions.toMap();
    map['logName'] = logName;
    return map;
  }

  factory LogConfigCloudAuditOptionsResponse3.fromMap(
      Map<String, dynamic> map) {
    return LogConfigCloudAuditOptionsResponse3(
      authorizationLoggingOptions: AuthorizationLoggingOptionsResponse3.fromMap(
          (map['authorizationLoggingOptions'] as Map).cast<String, dynamic>()),
      logName: map['logName'] as String,
    );
  }
}
