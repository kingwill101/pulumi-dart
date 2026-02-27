// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_cloud_audit_options_response_compute_beta.dart';
import 'log_config_counter_options_response_compute_beta.dart';
import 'log_config_data_access_options_response_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigResponseComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptionsResponseComputeBeta cloudAudit;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCounterOptionsResponseComputeBeta counter;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptionsResponseComputeBeta dataAccess;

  LogConfigResponseComputeBeta({
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

  factory LogConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return LogConfigResponseComputeBeta(
      cloudAudit: LogConfigCloudAuditOptionsResponseComputeBeta.fromMap(
          (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: LogConfigCounterOptionsResponseComputeBeta.fromMap(
          (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: LogConfigDataAccessOptionsResponseComputeBeta.fromMap(
          (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
