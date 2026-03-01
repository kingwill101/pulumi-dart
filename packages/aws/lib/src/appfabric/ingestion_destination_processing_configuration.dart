// ignore_for_file: unused_element, unnecessary_cast

import 'ingestion_destination_processing_configuration_audit_log.dart';

class IngestionDestinationProcessingConfiguration {
  /// Contains information about an audit log processing configuration.
  final IngestionDestinationProcessingConfigurationAuditLog auditLog;

  /// Creates a new [IngestionDestinationProcessingConfiguration].
  /// [auditLog] Contains information about an audit log processing configuration.
  IngestionDestinationProcessingConfiguration({required this.auditLog});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'auditLog': auditLog.toMap()};
  }

  factory IngestionDestinationProcessingConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return IngestionDestinationProcessingConfiguration(
      auditLog: IngestionDestinationProcessingConfigurationAuditLog.fromMap(
        (map['auditLog'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
