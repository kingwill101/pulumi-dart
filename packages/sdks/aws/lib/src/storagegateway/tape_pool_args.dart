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
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TapePoolArgs].
  /// [poolName] The name of the new custom tape pool.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionLockTimeInDays] Tape retention lock time is set in days. Tape retention lock can be enabled for up to 100 years (36,500 days). Default value is 0.
  /// [retentionLockType] Tape retention lock can be configured in two modes. When configured in governance mode, AWS accounts with specific IAM permissions are authorized to remove the tape retention lock from archived virtual tapes. When configured in compliance mode, the tape retention lock cannot be removed by any user, including the root AWS account. Possible values are `COMPLIANCE`, `GOVERNANCE`, and `NONE`. Default value is `NONE`.
  /// [storageClass] The storage class that is associated with the new custom pool. When you use your backup application to eject the tape, the tape is archived directly into the storage class that corresponds to the pool. Possible values are `DEEP_ARCHIVE` or `GLACIER`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const TapePoolArgs({
    required this.poolName,
    this.region,
    this.retentionLockTimeInDays,
    this.retentionLockType,
    required this.storageClass,
    this.tags,
  });

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
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionLockTimeInDays: (() { final guardedValue = map['retentionLockTimeInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retentionLockType: (() { final guardedValue = map['retentionLockType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
