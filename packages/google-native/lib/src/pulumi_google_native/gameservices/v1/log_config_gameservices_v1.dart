// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_audit_options.dart';
import 'counter_options.dart';
import 'data_access_options.dart';

/// Specifies what kind of log the caller must write
class LogConfigGameservicesV1 {
  /// Cloud audit options.
  final CloudAuditOptions? cloudAudit;

  /// Counter options.
  final CounterOptions? counter;

  /// Data access options.
  final DataAccessOptions? dataAccess;

  LogConfigGameservicesV1({
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

  factory LogConfigGameservicesV1.fromMap(Map<String, dynamic> map) {
    return LogConfigGameservicesV1(
      cloudAudit: map['cloudAudit'] == null
          ? null
          : CloudAuditOptions.fromMap(
              (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: map['counter'] == null
          ? null
          : CounterOptions.fromMap(
              (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: map['dataAccess'] == null
          ? null
          : DataAccessOptions.fromMap(
              (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
