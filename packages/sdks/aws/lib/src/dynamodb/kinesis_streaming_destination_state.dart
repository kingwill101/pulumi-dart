// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KinesisStreamingDestination resources.
class KinesisStreamingDestinationState {
  /// Toggle for the precision of Kinesis data stream timestamp. Valid values: `MILLISECOND` and `MICROSECOND`.
  final pulumi.Input<String>? approximateCreationDateTimePrecision;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN for a Kinesis data stream. This must exist in the same account and region as the DynamoDB table.
  final pulumi.Input<String>? streamArn;
  /// The name of the DynamoDB table. There can only be one Kinesis streaming destination for a given DynamoDB table.
  final pulumi.Input<String>? tableName;

  /// Creates a new [KinesisStreamingDestinationState].
  /// [approximateCreationDateTimePrecision] Toggle for the precision of Kinesis data stream timestamp. Valid values: `MILLISECOND` and `MICROSECOND`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streamArn] The ARN for a Kinesis data stream. This must exist in the same account and region as the DynamoDB table.
  /// [tableName] The name of the DynamoDB table. There can only be one Kinesis streaming destination for a given DynamoDB table.
  KinesisStreamingDestinationState({
    this.approximateCreationDateTimePrecision,
    this.region,
    this.streamArn,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approximateCreationDateTimePrecision': ?approximateCreationDateTimePrecision,
      'region': ?region,
      'streamArn': ?streamArn,
      'tableName': ?tableName,
    };
  }

  factory KinesisStreamingDestinationState.fromMap(Map<String, dynamic> map) {
    return KinesisStreamingDestinationState(
      approximateCreationDateTimePrecision: map['approximateCreationDateTimePrecision'] == null ? null : ((map['approximateCreationDateTimePrecision'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      streamArn: map['streamArn'] == null ? null : ((map['streamArn'] as String).input()).input(),
      tableName: map['tableName'] == null ? null : ((map['tableName'] as String).input()).input(),
    );
  }
}

