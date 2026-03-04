// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_destination_destination_configuration_audit_log_destination_firehose_stream.dart';
import 'ingestion_destination_destination_configuration_audit_log_destination_s3_bucket.dart';

class IngestionDestinationDestinationConfigurationAuditLogDestination {
  /// Contains information about an Amazon Data Firehose delivery stream.
  final pulumi.Input<
    IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream
  >?
  firehoseStream;

  /// Contains information about an Amazon S3 bucket.
  final pulumi.Input<
    IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket
  >?
  s3Bucket;

  /// Creates a new [IngestionDestinationDestinationConfigurationAuditLogDestination].
  /// [firehoseStream] Contains information about an Amazon Data Firehose delivery stream.
  /// [s3Bucket] Contains information about an Amazon S3 bucket.
  IngestionDestinationDestinationConfigurationAuditLogDestination({
    this.firehoseStream,
    this.s3Bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firehoseStream':
          ?pulumi.Input.mapOptionalInputValue<
            IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream,
            Map<String, dynamic>
          >(firehoseStream, (value) => value.toMap()),
      's3Bucket':
          ?pulumi.Input.mapOptionalInputValue<
            IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket,
            Map<String, dynamic>
          >(s3Bucket, (value) => value.toMap()),
    };
  }

  factory IngestionDestinationDestinationConfigurationAuditLogDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return IngestionDestinationDestinationConfigurationAuditLogDestination(
      firehoseStream: (() {
        final guardedValue = map['firehoseStream'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      s3Bucket: (() {
        final guardedValue = map['s3Bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
