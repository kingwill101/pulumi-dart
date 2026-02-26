// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_audit_options_response2.dart';
import 'counter_options_response2.dart';
import 'data_access_options_response2.dart';

/// Specifies what kind of log the caller must write
class LogConfigResponse5 {
  /// Cloud audit options.
  final CloudAuditOptionsResponse2 cloudAudit;

  /// Counter options.
  final CounterOptionsResponse2 counter;

  /// Data access options.
  final DataAccessOptionsResponse2 dataAccess;

  LogConfigResponse5({
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

  factory LogConfigResponse5.fromMap(Map<String, dynamic> map) {
    return LogConfigResponse5(
      cloudAudit: CloudAuditOptionsResponse2.fromMap(
          (map['cloudAudit'] as Map).cast<String, dynamic>()),
      counter: CounterOptionsResponse2.fromMap(
          (map['counter'] as Map).cast<String, dynamic>()),
      dataAccess: DataAccessOptionsResponse2.fromMap(
          (map['dataAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
