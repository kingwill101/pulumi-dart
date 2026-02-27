// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_audit_options_gameservices_v1beta.dart';
import 'counter_options_gameservices_v1beta.dart';
import 'data_access_options_gameservices_v1beta.dart';

/// Specifies what kind of log the caller must write
class LogConfigGameservicesV1beta {
  /// Cloud audit options.
  final CloudAuditOptionsGameservicesV1beta? cloudAudit;

  /// Counter options.
  final CounterOptionsGameservicesV1beta? counter;

  /// Data access options.
  final DataAccessOptionsGameservicesV1beta? dataAccess;

  LogConfigGameservicesV1beta({
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

  factory LogConfigGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return LogConfigGameservicesV1beta(
      cloudAudit: map['cloudAudit'] == null
          ? null
          : CloudAuditOptionsGameservicesV1beta.fromMap(
              (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: map['counter'] == null
          ? null
          : CounterOptionsGameservicesV1beta.fromMap(
              (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: map['dataAccess'] == null
          ? null
          : DataAccessOptionsGameservicesV1beta.fromMap(
              (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
