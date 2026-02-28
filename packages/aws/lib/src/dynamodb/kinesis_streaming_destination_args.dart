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
  KinesisStreamingDestinationArgs({
    String? approximateCreationDateTimePrecision,
    String? region,
    required String streamArn,
    required String tableName,
  })  : approximateCreationDateTimePrecision =
            pulumi.Input.asOptionalInput<String>(
                approximateCreationDateTimePrecision),
        region = pulumi.Input.asOptionalInput<String>(region),
        streamArn = pulumi.Input.asInput<String>(streamArn),
        tableName = pulumi.Input.asInput<String>(tableName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final approximateCreationDateTimePrecisionValue =
        approximateCreationDateTimePrecision;
    if (approximateCreationDateTimePrecisionValue != null) {
      map['approximateCreationDateTimePrecision'] =
          approximateCreationDateTimePrecisionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['streamArn'] = streamArn;
    map['tableName'] = tableName;
    return map;
  }

  factory KinesisStreamingDestinationArgs.fromMap(Map<String, dynamic> map) {
    return KinesisStreamingDestinationArgs(
      approximateCreationDateTimePrecision:
          map['approximateCreationDateTimePrecision'] == null
              ? null
              : map['approximateCreationDateTimePrecision'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      streamArn: map['streamArn'] as String,
      tableName: map['tableName'] as String,
    );
  }
}
