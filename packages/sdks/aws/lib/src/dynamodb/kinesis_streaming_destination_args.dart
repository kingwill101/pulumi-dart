// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dynamodb_kinesis_streaming_destination_kinesis_streaming_destination_args_doc}
/// The set of arguments for KinesisStreamingDestination.
/// {@endtemplate}
/// {@macro pulumi_dynamodb_kinesis_streaming_destination_kinesis_streaming_destination_args_doc}
class KinesisStreamingDestinationArgs {
  /// Toggle for the precision of Kinesis data stream timestamp. Valid values: `MILLISECOND` and `MICROSECOND`.
  final pulumi.Input<String>? approximateCreationDateTimePrecision;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN for a Kinesis data stream. This must exist in the same account and region as the DynamoDB table.
  final pulumi.Input<String> streamArn;
  /// The name of the DynamoDB table. There can only be one Kinesis streaming destination for a given DynamoDB table.
  final pulumi.Input<String> tableName;

  /// Creates a new [KinesisStreamingDestinationArgs].
  /// [approximateCreationDateTimePrecision] Toggle for the precision of Kinesis data stream timestamp. Valid values: `MILLISECOND` and `MICROSECOND`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streamArn] The ARN for a Kinesis data stream. This must exist in the same account and region as the DynamoDB table.
  /// [tableName] The name of the DynamoDB table. There can only be one Kinesis streaming destination for a given DynamoDB table.
  const KinesisStreamingDestinationArgs({
    this.approximateCreationDateTimePrecision,
    this.region,
    required this.streamArn,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approximateCreationDateTimePrecision': ?approximateCreationDateTimePrecision,
      'region': ?region,
      'streamArn': streamArn,
      'tableName': tableName,
    };
  }

  factory KinesisStreamingDestinationArgs.fromMap(Map<String, dynamic> map) {
    return KinesisStreamingDestinationArgs(
      approximateCreationDateTimePrecision: (() { final guardedValue = map['approximateCreationDateTimePrecision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamArn: pulumi.Input.fromValue(map['streamArn'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}

