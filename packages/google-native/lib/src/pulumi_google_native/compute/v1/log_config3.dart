// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_cloud_audit_options3.dart';
import 'log_config_counter_options3.dart';
import 'log_config_data_access_options3.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfig3 {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptions3? cloudAudit;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCounterOptions3? counter;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptions3? dataAccess;

  LogConfig3({
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

  factory LogConfig3.fromMap(Map<String, dynamic> map) {
    return LogConfig3(
      cloudAudit: map['cloudAudit'] == null
          ? null
          : LogConfigCloudAuditOptions3.fromMap(
              (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: map['counter'] == null
          ? null
          : LogConfigCounterOptions3.fromMap(
              (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: map['dataAccess'] == null
          ? null
          : LogConfigDataAccessOptions3.fromMap(
              (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
