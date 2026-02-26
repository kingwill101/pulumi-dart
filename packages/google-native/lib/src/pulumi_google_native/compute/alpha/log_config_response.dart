// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_cloud_audit_options_response.dart';
import 'log_config_counter_options_response.dart';
import 'log_config_data_access_options_response.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigResponse {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptionsResponse cloudAudit;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCounterOptionsResponse counter;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptionsResponse dataAccess;

  LogConfigResponse({
    required this.cloudAudit,
    required this.counter,
    required this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudAudit'] = cloudAudit.toMap();
    map['counter'] = counter.toMap();
    map['dataAccess'] = dataAccess.toMap();
    return map;
  }

  factory LogConfigResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigResponse(
      cloudAudit: LogConfigCloudAuditOptionsResponse.fromMap(
          (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: LogConfigCounterOptionsResponse.fromMap(
          (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: LogConfigDataAccessOptionsResponse.fromMap(
          (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
