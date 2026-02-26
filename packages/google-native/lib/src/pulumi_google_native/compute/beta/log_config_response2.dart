// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_cloud_audit_options_response2.dart';
import 'log_config_counter_options_response2.dart';
import 'log_config_data_access_options_response2.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigResponse2 {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptionsResponse2 cloudAudit;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCounterOptionsResponse2 counter;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptionsResponse2 dataAccess;

  LogConfigResponse2({
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

  factory LogConfigResponse2.fromMap(Map<String, dynamic> map) {
    return LogConfigResponse2(
      cloudAudit: LogConfigCloudAuditOptionsResponse2.fromMap(
          (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: LogConfigCounterOptionsResponse2.fromMap(
          (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: LogConfigDataAccessOptionsResponse2.fromMap(
          (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
