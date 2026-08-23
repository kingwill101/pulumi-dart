// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_destination_destination_configuration_audit_log.dart';

class IngestionDestinationDestinationConfiguration {
  /// Audit log destination configuration. See `destination_configuration.audit_log` Block below.
  final pulumi.Input<IngestionDestinationDestinationConfigurationAuditLog> auditLog;

  /// Creates a new [IngestionDestinationDestinationConfiguration].
  /// [auditLog] Audit log destination configuration. See `destination_configuration.audit_log` Block below.
  const IngestionDestinationDestinationConfiguration({
    required this.auditLog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLog': pulumi.Input.mapInputValue<IngestionDestinationDestinationConfigurationAuditLog, Map<String, dynamic>>(auditLog, (value) => value.toMap()),
    };
  }

  factory IngestionDestinationDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return IngestionDestinationDestinationConfiguration(
      auditLog: pulumi.Input.fromValue(IngestionDestinationDestinationConfigurationAuditLog.fromMap((map['auditLog']! as Map).cast<String, dynamic>())),
    );
  }
}
