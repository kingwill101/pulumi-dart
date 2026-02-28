// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options.dart';
import 'log_config_cloud_audit_options_log_name.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCloudAuditOptions {
  /// This is deprecated and has no effect. Do not use.
  final AuthorizationLoggingOptions? authorizationLoggingOptions;
  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptionsLogName? logName;

  /// Creates a new [LogConfigCloudAuditOptions].
  /// [authorizationLoggingOptions] This is deprecated and has no effect. Do not use.
  /// [logName] This is deprecated and has no effect. Do not use.
  LogConfigCloudAuditOptions({
    this.authorizationLoggingOptions,
    this.logName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions': ?authorizationLoggingOptions == null ? null : authorizationLoggingOptions!.toMap(),
      'logName': ?logName == null ? null : logName!.value,
    };
  }

  factory LogConfigCloudAuditOptions.fromMap(Map<String, dynamic> map) {
    return LogConfigCloudAuditOptions(
      authorizationLoggingOptions: map['authorizationLoggingOptions'] == null ? null : AuthorizationLoggingOptions.fromMap((map['authorizationLoggingOptions'] as Map).cast<String, dynamic>()),
      logName: map['logName'] == null ? null : LogConfigCloudAuditOptionsLogName.fromValue(map['logName'] as String),
    );
  }
}

