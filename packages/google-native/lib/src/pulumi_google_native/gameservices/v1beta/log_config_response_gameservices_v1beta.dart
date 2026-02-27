// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_audit_options_response_gameservices_v1beta.dart';
import 'counter_options_response_gameservices_v1beta.dart';
import 'data_access_options_response_gameservices_v1beta.dart';

/// Specifies what kind of log the caller must write
class LogConfigResponseGameservicesV1beta {
  /// Cloud audit options.
  final CloudAuditOptionsResponseGameservicesV1beta cloudAudit;

  /// Counter options.
  final CounterOptionsResponseGameservicesV1beta counter;

  /// Data access options.
  final DataAccessOptionsResponseGameservicesV1beta dataAccess;

  LogConfigResponseGameservicesV1beta({
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

  factory LogConfigResponseGameservicesV1beta.fromMap(
      Map<String, dynamic> map) {
    return LogConfigResponseGameservicesV1beta(
      cloudAudit: CloudAuditOptionsResponseGameservicesV1beta.fromMap(
          (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: CounterOptionsResponseGameservicesV1beta.fromMap(
          (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: DataAccessOptionsResponseGameservicesV1beta.fromMap(
          (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
