// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_audit_options_response.dart';
import 'counter_options_response.dart';
import 'data_access_options_response.dart';

/// Specifies what kind of log the caller must write
class LogConfigResponse {
  /// Cloud audit options.
  final CloudAuditOptionsResponse cloudAudit;

  /// Counter options.
  final CounterOptionsResponse counter;

  /// Data access options.
  final DataAccessOptionsResponse dataAccess;

  /// Creates a new [LogConfigResponse].
  /// [cloudAudit] Cloud audit options.
  /// [counter] Counter options.
  /// [dataAccess] Data access options.
  LogConfigResponse({
    required this.cloudAudit,
    required this.counter,
    required this.dataAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAudit': cloudAudit.toMap(),
      'counter': counter.toMap(),
      'dataAccess': dataAccess.toMap(),
    };
  }

  factory LogConfigResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigResponse(
      cloudAudit: CloudAuditOptionsResponse.fromMap(
        (map['cloudAudit'] as Map).cast<String, dynamic>(),
      ),
      counter: CounterOptionsResponse.fromMap(
        (map['counter'] as Map).cast<String, dynamic>(),
      ),
      dataAccess: DataAccessOptionsResponse.fromMap(
        (map['dataAccess'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
