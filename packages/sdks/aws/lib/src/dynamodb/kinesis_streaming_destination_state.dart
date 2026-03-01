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
    pulumi.Output<String>? approximateCreationDateTimePrecision,
    pulumi.Output<String>? region,
    pulumi.Output<String>? streamArn,
    pulumi.Output<String>? tableName,
  }) :
      approximateCreationDateTimePrecision = pulumi.Input.asOptionalInput<String>(approximateCreationDateTimePrecision),
      region = pulumi.Input.asOptionalInput<String>(region),
      streamArn = pulumi.Input.asOptionalInput<String>(streamArn),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

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
      approximateCreationDateTimePrecision: map['approximateCreationDateTimePrecision'] == null ? null : pulumi.Output.create<String>(map['approximateCreationDateTimePrecision'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      streamArn: map['streamArn'] == null ? null : pulumi.Output.create<String>(map['streamArn'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

