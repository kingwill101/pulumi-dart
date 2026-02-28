// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_audit_options.dart';
import 'counter_options.dart';
import 'data_access_options.dart';

/// Specifies what kind of log the caller must write
class LogConfig {
  /// Cloud audit options.
  final CloudAuditOptions? cloudAudit;
  /// Counter options.
  final CounterOptions? counter;
  /// Data access options.
  final DataAccessOptions? dataAccess;

  /// Creates a new [LogConfig].
  /// [cloudAudit] Cloud audit options.
  /// [counter] Counter options.
  /// [dataAccess] Data access options.
  LogConfig({
    this.cloudAudit,
    this.counter,
    this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit': ?cloudAudit == null ? null : cloudAudit!.toMap(),
      'counter': ?counter == null ? null : counter!.toMap(),
      'dataAccess': ?dataAccess == null ? null : dataAccess!.toMap(),
    };
  }

  factory LogConfig.fromMap(Map<String, dynamic> map) {
    return LogConfig(
      cloudAudit: map['cloudAudit'] == null ? null : CloudAuditOptions.fromMap((map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: map['counter'] == null ? null : CounterOptions.fromMap((map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: map['dataAccess'] == null ? null : DataAccessOptions.fromMap((map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}

