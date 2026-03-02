// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_cluster_activity_stream_cluster_activity_stream_args_doc}
/// The set of arguments for ClusterActivityStream.
/// {@endtemplate}
/// {@macro pulumi_rds_cluster_activity_stream_cluster_activity_stream_args_doc}
class ClusterActivityStreamArgs {
  /// Specifies whether the database activity stream includes engine-native audit fields. This option only applies to an Oracle DB instance. By default, no engine-native audit fields are included. Defaults `false`.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/start-activity-stream.html).
  final pulumi.Input<bool>? engineNativeAuditFieldsIncluded;
  /// The AWS KMS key identifier for encrypting messages in the database activity stream. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
  final pulumi.Input<String> kmsKeyId;
  /// Specifies the mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously. One of: `sync`, `async`.
  final pulumi.Input<String> mode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the DB cluster.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [ClusterActivityStreamArgs].
  /// [engineNativeAuditFieldsIncluded] Specifies whether the database activity stream includes engine-native audit fields. This option only applies to an Oracle DB instance. By default, no engine-native audit fields are included. Defaults `false`.
  /// [kmsKeyId] The AWS KMS key identifier for encrypting messages in the database activity stream. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
  /// [mode] Specifies the mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously. One of: `sync`, `async`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The Amazon Resource Name (ARN) of the DB cluster.
  ClusterActivityStreamArgs({
    this.engineNativeAuditFieldsIncluded,
    required this.kmsKeyId,
    required this.mode,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engineNativeAuditFieldsIncluded': ?engineNativeAuditFieldsIncluded,
      'kmsKeyId': kmsKeyId,
      'mode': mode,
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory ClusterActivityStreamArgs.fromMap(Map<String, dynamic> map) {
    return ClusterActivityStreamArgs(
      engineNativeAuditFieldsIncluded: map['engineNativeAuditFieldsIncluded'] == null ? null : ((map['engineNativeAuditFieldsIncluded'] as bool).input()).input(),
      kmsKeyId: (map['kmsKeyId'] as String).input(),
      mode: (map['mode'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceArn: (map['resourceArn'] as String).input(),
    );
  }
}

