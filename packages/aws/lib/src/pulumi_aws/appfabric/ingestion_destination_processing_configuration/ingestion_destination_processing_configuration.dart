// ignore_for_file: unused_element, unnecessary_cast

import '../ingestion_destination_processing_configuration_audit_log/ingestion_destination_processing_configuration_audit_log.dart';

class IngestionDestinationProcessingConfiguration {
  /// Contains information about an audit log processing configuration.
  final IngestionDestinationProcessingConfigurationAuditLog auditLog;

  IngestionDestinationProcessingConfiguration({
    required this.auditLog,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLog'] = auditLog.toMap();
    return map;
  }

  factory IngestionDestinationProcessingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return IngestionDestinationProcessingConfiguration(
      auditLog: IngestionDestinationProcessingConfigurationAuditLog.fromMap(
          (map['auditLog'] as Map).cast<String, dynamic>()),
    );
  }
}
