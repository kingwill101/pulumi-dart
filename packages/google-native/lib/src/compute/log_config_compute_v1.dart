// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_cloud_audit_options_compute_v1.dart';
import 'log_config_counter_options_compute_v1.dart';
import 'log_config_data_access_options_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigCloudAuditOptionsComputeV1? cloudAudit;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigCounterOptionsComputeV1? counter;

  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptionsComputeV1? dataAccess;

  /// Creates a new [LogConfigComputeV1].
  /// [cloudAudit] This is deprecated and has no effect. Do not use.
  /// [counter] This is deprecated and has no effect. Do not use.
  /// [dataAccess] This is deprecated and has no effect. Do not use.
  LogConfigComputeV1({this.cloudAudit, this.counter, this.dataAccess});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit': ?cloudAudit == null ? null : cloudAudit!.toMap(),
      'counter': ?counter == null ? null : counter!.toMap(),
      'dataAccess': ?dataAccess == null ? null : dataAccess!.toMap(),
    };
  }

  factory LogConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return LogConfigComputeV1(
      cloudAudit: map['cloudAudit'] == null
          ? null
          : LogConfigCloudAuditOptionsComputeV1.fromMap(
              (map['cloudAudit'] as Map).cast<String, dynamic>(),
            ),
      counter: map['counter'] == null
          ? null
          : LogConfigCounterOptionsComputeV1.fromMap(
              (map['counter'] as Map).cast<String, dynamic>(),
            ),
      dataAccess: map['dataAccess'] == null
          ? null
          : LogConfigDataAccessOptionsComputeV1.fromMap(
              (map['dataAccess'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
