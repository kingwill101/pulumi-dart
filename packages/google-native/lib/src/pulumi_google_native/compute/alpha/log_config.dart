// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_cloud_audit_options.dart';
import 'log_config_counter_options.dart';
import 'log_config_data_access_options.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfig {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptions? cloudAudit;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCounterOptions? counter;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptions? dataAccess;

  LogConfig({
    this.cloudAudit,
    this.counter,
    this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudAuditValue = cloudAudit;
    if (cloudAuditValue != null) {
      map['cloudAudit'] = cloudAuditValue.toMap();
    }
    final counterValue = counter;
    if (counterValue != null) {
      map['counter'] = counterValue.toMap();
    }
    final dataAccessValue = dataAccess;
    if (dataAccessValue != null) {
      map['dataAccess'] = dataAccessValue.toMap();
    }
    return map;
  }

  factory LogConfig.fromMap(Map<String, dynamic> map) {
    return LogConfig(
      cloudAudit: map['cloudAudit'] == null
          ? null
          : LogConfigCloudAuditOptions.fromMap(
              (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: map['counter'] == null
          ? null
          : LogConfigCounterOptions.fromMap(
              (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: map['dataAccess'] == null
          ? null
          : LogConfigDataAccessOptions.fromMap(
              (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
