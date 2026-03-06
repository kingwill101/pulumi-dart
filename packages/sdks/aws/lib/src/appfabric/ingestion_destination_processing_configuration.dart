// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_destination_processing_configuration_audit_log.dart';

class IngestionDestinationProcessingConfiguration {
  /// Contains information about an audit log processing configuration.
  final pulumi.Input<IngestionDestinationProcessingConfigurationAuditLog> auditLog;

  /// Creates a new [IngestionDestinationProcessingConfiguration].
  /// [auditLog] Contains information about an audit log processing configuration.
  const IngestionDestinationProcessingConfiguration({
    required this.auditLog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLog': pulumi.Input.mapInputValue<IngestionDestinationProcessingConfigurationAuditLog, Map<String, dynamic>>(auditLog, (value) => value.toMap()),
    };
  }

  factory IngestionDestinationProcessingConfiguration.fromMap(Map<String, dynamic> map) {
    return IngestionDestinationProcessingConfiguration(
      auditLog: pulumi.Input.fromValue(IngestionDestinationProcessingConfigurationAuditLog.fromMap((map['auditLog']! as Map).cast<String, dynamic>())),
    );
  }
}

