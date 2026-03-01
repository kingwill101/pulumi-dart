// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterActivityStream resources.
class ClusterActivityStreamState {
  /// Specifies whether the database activity stream includes engine-native audit fields. This option only applies to an Oracle DB instance. By default, no engine-native audit fields are included. Defaults `false`.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/start-activity-stream.html).
  final pulumi.Input<bool>? engineNativeAuditFieldsIncluded;
  /// The name of the Amazon Kinesis data stream to be used for the database activity stream.
  final pulumi.Input<String>? kinesisStreamName;
  /// The AWS KMS key identifier for encrypting messages in the database activity stream. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
  final pulumi.Input<String>? kmsKeyId;
  /// Specifies the mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously. One of: `sync`, `async`.
  final pulumi.Input<String>? mode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the DB cluster.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [ClusterActivityStreamState].
  /// [engineNativeAuditFieldsIncluded] Specifies whether the database activity stream includes engine-native audit fields. This option only applies to an Oracle DB instance. By default, no engine-native audit fields are included. Defaults `false`.
  /// [kinesisStreamName] The name of the Amazon Kinesis data stream to be used for the database activity stream.
  /// [kmsKeyId] The AWS KMS key identifier for encrypting messages in the database activity stream. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
  /// [mode] Specifies the mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously. One of: `sync`, `async`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The Amazon Resource Name (ARN) of the DB cluster.
  ClusterActivityStreamState({
    pulumi.Output<bool>? engineNativeAuditFieldsIncluded,
    pulumi.Output<String>? kinesisStreamName,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
  }) :
      engineNativeAuditFieldsIncluded = pulumi.Input.asOptionalInput<bool>(engineNativeAuditFieldsIncluded),
      kinesisStreamName = pulumi.Input.asOptionalInput<String>(kinesisStreamName),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engineNativeAuditFieldsIncluded': ?engineNativeAuditFieldsIncluded,
      'kinesisStreamName': ?kinesisStreamName,
      'kmsKeyId': ?kmsKeyId,
      'mode': ?mode,
      'region': ?region,
      'resourceArn': ?resourceArn,
    };
  }

  factory ClusterActivityStreamState.fromMap(Map<String, dynamic> map) {
    return ClusterActivityStreamState(
      engineNativeAuditFieldsIncluded: map['engineNativeAuditFieldsIncluded'] == null ? null : pulumi.Output.create<bool>(map['engineNativeAuditFieldsIncluded'] as bool),
      kinesisStreamName: map['kinesisStreamName'] == null ? null : pulumi.Output.create<String>(map['kinesisStreamName'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
    );
  }
}

