// ignore_for_file: unused_element, unnecessary_cast

import 'ingestion_destination_destination_configuration_audit_log_destination.dart';

class IngestionDestinationDestinationConfigurationAuditLog {
  /// Contains information about an audit log destination. Only one destination (Firehose Stream) or (S3 Bucket) can be specified.
  final IngestionDestinationDestinationConfigurationAuditLogDestination
      destination;

  /// Creates a new [IngestionDestinationDestinationConfigurationAuditLog].
  /// [destination] Contains information about an audit log destination. Only one destination (Firehose Stream) or (S3 Bucket) can be specified.
  IngestionDestinationDestinationConfigurationAuditLog({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = destination.toMap();
    return map;
  }

  factory IngestionDestinationDestinationConfigurationAuditLog.fromMap(
      Map<String, dynamic> map) {
    return IngestionDestinationDestinationConfigurationAuditLog(
      destination:
          IngestionDestinationDestinationConfigurationAuditLogDestination
              .fromMap((map['destination'] as Map).cast<String, dynamic>()),
    );
  }
}
