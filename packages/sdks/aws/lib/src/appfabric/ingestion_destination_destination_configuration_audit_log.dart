// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_destination_destination_configuration_audit_log_destination.dart';

class IngestionDestinationDestinationConfigurationAuditLog {
  /// Destination for the audit log. Only one destination, either `firehoseStream` or `s3Bucket`, can be specified. See `destination_configuration.audit_log.destination` Block below.
  final pulumi.Input<IngestionDestinationDestinationConfigurationAuditLogDestination> destination;

  /// Creates a new [IngestionDestinationDestinationConfigurationAuditLog].
  /// [destination] Destination for the audit log. Only one destination, either `firehoseStream` or `s3Bucket`, can be specified. See `destination_configuration.audit_log.destination` Block below.
  const IngestionDestinationDestinationConfigurationAuditLog({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<IngestionDestinationDestinationConfigurationAuditLogDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
    };
  }

  factory IngestionDestinationDestinationConfigurationAuditLog.fromMap(Map<String, dynamic> map) {
    return IngestionDestinationDestinationConfigurationAuditLog(
      destination: pulumi.Input.fromValue(IngestionDestinationDestinationConfigurationAuditLogDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
    );
  }
}
