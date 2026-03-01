// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_logging_options.dart';
import 'cloud_audit_options_log_name.dart';

/// Write a Cloud Audit log
class CloudAuditOptions {
  /// Information used by the Cloud Audit Logging pipeline.
  final AuthorizationLoggingOptions? authorizationLoggingOptions;

  /// The log_name to populate in the Cloud Audit Record.
  final CloudAuditOptionsLogName? logName;

  /// Creates a new [CloudAuditOptions].
  /// [authorizationLoggingOptions] Information used by the Cloud Audit Logging pipeline.
  /// [logName] The log_name to populate in the Cloud Audit Record.
  CloudAuditOptions({this.authorizationLoggingOptions, this.logName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationLoggingOptions': ?authorizationLoggingOptions == null
          ? null
          : authorizationLoggingOptions!.toMap(),
      'logName': ?logName == null ? null : logName!.value,
    };
  }

  factory CloudAuditOptions.fromMap(Map<String, dynamic> map) {
    return CloudAuditOptions(
      authorizationLoggingOptions: map['authorizationLoggingOptions'] == null
          ? null
          : AuthorizationLoggingOptions.fromMap(
              (map['authorizationLoggingOptions'] as Map)
                  .cast<String, dynamic>(),
            ),
      logName: map['logName'] == null
          ? null
          : CloudAuditOptionsLogName.fromValue(map['logName'] as String),
    );
  }
}
