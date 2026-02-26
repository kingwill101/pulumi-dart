// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_cloud_audit_options_response3.dart';
import 'log_config_counter_options_response3.dart';
import 'log_config_data_access_options_response3.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigResponse3 {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptionsResponse3 cloudAudit;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCounterOptionsResponse3 counter;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptionsResponse3 dataAccess;

  LogConfigResponse3({
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

  factory LogConfigResponse3.fromMap(Map<String, dynamic> map) {
    return LogConfigResponse3(
      cloudAudit: LogConfigCloudAuditOptionsResponse3.fromMap(
          (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: LogConfigCounterOptionsResponse3.fromMap(
          (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: LogConfigDataAccessOptionsResponse3.fromMap(
          (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
