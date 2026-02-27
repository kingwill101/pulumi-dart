// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_cloud_audit_options_compute_beta.dart';
import 'log_config_counter_options_compute_beta.dart';
import 'log_config_data_access_options_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptionsComputeBeta? cloudAudit;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCounterOptionsComputeBeta? counter;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptionsComputeBeta? dataAccess;

  LogConfigComputeBeta({
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

  factory LogConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return LogConfigComputeBeta(
      cloudAudit: map['cloudAudit'] == null
          ? null
          : LogConfigCloudAuditOptionsComputeBeta.fromMap(
              (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: map['counter'] == null
          ? null
          : LogConfigCounterOptionsComputeBeta.fromMap(
              (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: map['dataAccess'] == null
          ? null
          : LogConfigDataAccessOptionsComputeBeta.fromMap(
              (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
