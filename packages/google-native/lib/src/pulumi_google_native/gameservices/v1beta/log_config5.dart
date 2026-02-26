// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_audit_options2.dart';
import 'counter_options2.dart';
import 'data_access_options2.dart';

/// Specifies what kind of log the caller must write
class LogConfig5 {
  /// Cloud audit options.
  final CloudAuditOptions2? cloudAudit;

  /// Counter options.
  final CounterOptions2? counter;

  /// Data access options.
  final DataAccessOptions2? dataAccess;

  LogConfig5({
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

  factory LogConfig5.fromMap(Map<String, dynamic> map) {
    return LogConfig5(
      cloudAudit: map['cloudAudit'] == null
          ? null
          : CloudAuditOptions2.fromMap(
              (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: map['counter'] == null
          ? null
          : CounterOptions2.fromMap(
              (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: map['dataAccess'] == null
          ? null
          : DataAccessOptions2.fromMap(
              (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
