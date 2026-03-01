// ignore_for_file: unused_element, unnecessary_cast

import 'ingestion_destination_destination_configuration_audit_log.dart';

class IngestionDestinationDestinationConfiguration {
  /// Contains information about an audit log processing configuration.
  final IngestionDestinationDestinationConfigurationAuditLog auditLog;

  /// Creates a new [IngestionDestinationDestinationConfiguration].
  /// [auditLog] Contains information about an audit log processing configuration.
  IngestionDestinationDestinationConfiguration({
    required this.auditLog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLog': auditLog.toMap(),
    };
  }

  factory IngestionDestinationDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return IngestionDestinationDestinationConfiguration(
      auditLog: IngestionDestinationDestinationConfigurationAuditLog.fromMap((map['auditLog'] as Map).cast<String, dynamic>()),
    );
  }
}

