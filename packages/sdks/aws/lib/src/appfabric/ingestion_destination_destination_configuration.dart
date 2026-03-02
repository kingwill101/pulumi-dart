// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_destination_destination_configuration_audit_log.dart';

class IngestionDestinationDestinationConfiguration {
  /// Contains information about an audit log processing configuration.
  final pulumi.Input<IngestionDestinationDestinationConfigurationAuditLog> auditLog;

  /// Creates a new [IngestionDestinationDestinationConfiguration].
  /// [auditLog] Contains information about an audit log processing configuration.
  IngestionDestinationDestinationConfiguration({
    required this.auditLog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLog': pulumi.Input.mapInputValue<IngestionDestinationDestinationConfigurationAuditLog, Map<String, dynamic>>(auditLog, (value) => value.toMap()),
    };
  }

  factory IngestionDestinationDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return IngestionDestinationDestinationConfiguration(
      auditLog: (IngestionDestinationDestinationConfigurationAuditLog.fromMap((map['auditLog']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

