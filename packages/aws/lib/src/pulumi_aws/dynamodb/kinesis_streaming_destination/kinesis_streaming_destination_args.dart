// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for KinesisStreamingDestination.
class KinesisStreamingDestinationArgs {
  /// Toggle for the precision of Kinesis data stream timestamp. Valid values: `MILLISECOND` and `MICROSECOND`.
  final pulumi.Input<String>? approximateCreationDateTimePrecision;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ARN for a Kinesis data stream. This must exist in the same account and region as the DynamoDB table.
  final pulumi.Input<String> streamArn;

  /// The name of the DynamoDB table. There can only be one Kinesis streaming destination for a given DynamoDB table.
  final pulumi.Input<String> tableName;

  KinesisStreamingDestinationArgs({
    this.approximateCreationDateTimePrecision,
    this.region,
    required this.streamArn,
    required this.tableName,
  });

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
          pulumi.Input.asOptionalInput<String>(
              map['approximateCreationDateTimePrecision']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      streamArn: pulumi.Input.asInput<String>(map['streamArn']),
      tableName: pulumi.Input.asInput<String>(map['tableName']),
    );
  }
}
