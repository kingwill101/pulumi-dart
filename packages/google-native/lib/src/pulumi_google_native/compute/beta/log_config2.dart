// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_cloud_audit_options2.dart';
import 'log_config_counter_options2.dart';
import 'log_config_data_access_options2.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfig2 {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptions2? cloudAudit;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCounterOptions2? counter;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptions2? dataAccess;

  LogConfig2({
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

  factory LogConfig2.fromMap(Map<String, dynamic> map) {
    return LogConfig2(
      cloudAudit: map['cloudAudit'] == null
          ? null
          : LogConfigCloudAuditOptions2.fromMap(
              (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: map['counter'] == null
          ? null
          : LogConfigCounterOptions2.fromMap(
              (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: map['dataAccess'] == null
          ? null
          : LogConfigDataAccessOptions2.fromMap(
              (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
