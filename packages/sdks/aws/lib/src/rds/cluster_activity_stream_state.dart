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
    this.engineNativeAuditFieldsIncluded,
    this.kinesisStreamName,
    this.kmsKeyId,
    this.mode,
    this.region,
    this.resourceArn,
  });

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
      engineNativeAuditFieldsIncluded: map['engineNativeAuditFieldsIncluded'] == null ? null : ((map['engineNativeAuditFieldsIncluded'] as bool).input()).input(),
      kinesisStreamName: map['kinesisStreamName'] == null ? null : ((map['kinesisStreamName'] as String).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      mode: map['mode'] == null ? null : ((map['mode'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceArn: map['resourceArn'] == null ? null : ((map['resourceArn'] as String).input()).input(),
    );
  }
}

