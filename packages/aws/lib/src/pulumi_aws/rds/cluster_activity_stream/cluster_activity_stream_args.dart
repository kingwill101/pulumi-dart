// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ClusterActivityStream.
class ClusterActivityStreamArgs {
  /// Specifies whether the database activity stream includes engine-native audit fields. This option only applies to an Oracle DB instance. By default, no engine-native audit fields are included. Defaults `false`.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/start-activity-stream.html).
  final Input<bool>? engineNativeAuditFieldsIncluded;

  /// The AWS KMS key identifier for encrypting messages in the database activity stream. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
  final Input<String> kmsKeyId;

  /// Specifies the mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously. One of: `sync`, `async`.
  final Input<String> mode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the DB cluster.
  final Input<String> resourceArn;

  ClusterActivityStreamArgs({
    this.engineNativeAuditFieldsIncluded,
    required this.kmsKeyId,
    required this.mode,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineNativeAuditFieldsIncludedValue =
        engineNativeAuditFieldsIncluded;
    if (engineNativeAuditFieldsIncludedValue != null) {
      map['engineNativeAuditFieldsIncluded'] =
          engineNativeAuditFieldsIncludedValue;
    }
    map['kmsKeyId'] = kmsKeyId;
    map['mode'] = mode;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory ClusterActivityStreamArgs.fromMap(Map<String, dynamic> map) {
    return ClusterActivityStreamArgs(
      engineNativeAuditFieldsIncluded:
          Input.asOptionalInput<bool>(map['engineNativeAuditFieldsIncluded']),
      kmsKeyId: Input.asInput<String>(map['kmsKeyId']),
      mode: Input.asInput<String>(map['mode']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
    );
  }
}
