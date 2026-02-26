// ignore_for_file: unused_element, unnecessary_cast

import '../ingestion_destination_destination_configuration_audit_log/ingestion_destination_destination_configuration_audit_log.dart';

class IngestionDestinationDestinationConfiguration {
  /// Contains information about an audit log processing configuration.
  final IngestionDestinationDestinationConfigurationAuditLog auditLog;

  IngestionDestinationDestinationConfiguration({
    required this.auditLog,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLog'] = auditLog.toMap();
    return map;
  }

  factory IngestionDestinationDestinationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return IngestionDestinationDestinationConfiguration(
      auditLog: IngestionDestinationDestinationConfigurationAuditLog.fromMap(
          (map['auditLog'] as Map).cast<String, dynamic>()),
    );
  }
}
