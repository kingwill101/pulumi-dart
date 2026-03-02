// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_destination_destination_configuration_audit_log_destination.dart';

class IngestionDestinationDestinationConfigurationAuditLog {
  /// Contains information about an audit log destination. Only one destination (Firehose Stream) or (S3 Bucket) can be specified.
  final pulumi.Input<IngestionDestinationDestinationConfigurationAuditLogDestination> destination;

  /// Creates a new [IngestionDestinationDestinationConfigurationAuditLog].
  /// [destination] Contains information about an audit log destination. Only one destination (Firehose Stream) or (S3 Bucket) can be specified.
  IngestionDestinationDestinationConfigurationAuditLog({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<IngestionDestinationDestinationConfigurationAuditLogDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
    };
  }

  factory IngestionDestinationDestinationConfigurationAuditLog.fromMap(Map<String, dynamic> map) {
    return IngestionDestinationDestinationConfigurationAuditLog(
      destination: (IngestionDestinationDestinationConfigurationAuditLogDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

