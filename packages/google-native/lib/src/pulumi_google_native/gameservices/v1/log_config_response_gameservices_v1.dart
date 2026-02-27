// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_audit_options_response.dart';
import 'counter_options_response.dart';
import 'data_access_options_response.dart';

/// Specifies what kind of log the caller must write
class LogConfigResponseGameservicesV1 {
  /// Cloud audit options.
  final CloudAuditOptionsResponse cloudAudit;

  /// Counter options.
  final CounterOptionsResponse counter;

  /// Data access options.
  final DataAccessOptionsResponse dataAccess;

  LogConfigResponseGameservicesV1({
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

  factory LogConfigResponseGameservicesV1.fromMap(Map<String, dynamic> map) {
    return LogConfigResponseGameservicesV1(
      cloudAudit: CloudAuditOptionsResponse.fromMap(
          (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: CounterOptionsResponse.fromMap(
          (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: DataAccessOptionsResponse.fromMap(
          (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
