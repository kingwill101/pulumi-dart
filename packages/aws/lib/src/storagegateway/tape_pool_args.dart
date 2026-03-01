// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagegateway_tape_pool_tape_pool_args_doc}
/// The set of arguments for TapePool.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_tape_pool_tape_pool_args_doc}
class TapePoolArgs {
  /// The name of the new custom tape pool.
  final pulumi.Input<String> poolName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tape retention lock time is set in days. Tape retention lock can be enabled for up to 100 years (36,500 days). Default value is 0.
  final pulumi.Input<int>? retentionLockTimeInDays;

  /// Tape retention lock can be configured in two modes. When configured in governance mode, AWS accounts with specific IAM permissions are authorized to remove the tape retention lock from archived virtual tapes. When configured in compliance mode, the tape retention lock cannot be removed by any user, including the root AWS account. Possible values are `COMPLIANCE`, `GOVERNANCE`, and `NONE`. Default value is `NONE`.
  final pulumi.Input<String>? retentionLockType;

  /// The storage class that is associated with the new custom pool. When you use your backup application to eject the tape, the tape is archived directly into the storage class that corresponds to the pool. Possible values are `DEEP_ARCHIVE` or `GLACIER`.
  final pulumi.Input<String> storageClass;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TapePoolArgs].
  /// [poolName] The name of the new custom tape pool.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionLockTimeInDays] Tape retention lock time is set in days. Tape retention lock can be enabled for up to 100 years (36,500 days). Default value is 0.
  /// [retentionLockType] Tape retention lock can be configured in two modes. When configured in governance mode, AWS accounts with specific IAM permissions are authorized to remove the tape retention lock from archived virtual tapes. When configured in compliance mode, the tape retention lock cannot be removed by any user, including the root AWS account. Possible values are `COMPLIANCE`, `GOVERNANCE`, and `NONE`. Default value is `NONE`.
  /// [storageClass] The storage class that is associated with the new custom pool. When you use your backup application to eject the tape, the tape is archived directly into the storage class that corresponds to the pool. Possible values are `DEEP_ARCHIVE` or `GLACIER`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  TapePoolArgs({
    required String poolName,
    String? region,
    int? retentionLockTimeInDays,
    String? retentionLockType,
    required String storageClass,
    Map<String, String>? tags,
  }) : poolName = pulumi.Input.asInput<String>(poolName),
       region = pulumi.Input.asOptionalInput<String>(region),
       retentionLockTimeInDays = pulumi.Input.asOptionalInput<int>(
         retentionLockTimeInDays,
       ),
       retentionLockType = pulumi.Input.asOptionalInput<String>(
         retentionLockType,
       ),
       storageClass = pulumi.Input.asInput<String>(storageClass),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolName': poolName,
      'region': ?region,
      'retentionLockTimeInDays': ?retentionLockTimeInDays,
      'retentionLockType': ?retentionLockType,
      'storageClass': storageClass,
      'tags': ?tags,
    };
  }

  factory TapePoolArgs.fromMap(Map<String, dynamic> map) {
    return TapePoolArgs(
      poolName: map['poolName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      retentionLockTimeInDays: map['retentionLockTimeInDays'] == null
          ? null
          : map['retentionLockTimeInDays'] as int,
      retentionLockType: map['retentionLockType'] == null
          ? null
          : map['retentionLockType'] as String,
      storageClass: map['storageClass'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
