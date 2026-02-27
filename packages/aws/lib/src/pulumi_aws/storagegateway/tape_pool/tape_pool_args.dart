// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TapePool.
class TapePoolArgs {
  /// The name of the new custom tape pool.
  final Input<String> poolName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tape retention lock time is set in days. Tape retention lock can be enabled for up to 100 years (36,500 days). Default value is 0.
  final Input<int>? retentionLockTimeInDays;

  /// Tape retention lock can be configured in two modes. When configured in governance mode, AWS accounts with specific IAM permissions are authorized to remove the tape retention lock from archived virtual tapes. When configured in compliance mode, the tape retention lock cannot be removed by any user, including the root AWS account. Possible values are `COMPLIANCE`, `GOVERNANCE`, and `NONE`. Default value is `NONE`.
  final Input<String>? retentionLockType;

  /// The storage class that is associated with the new custom pool. When you use your backup application to eject the tape, the tape is archived directly into the storage class that corresponds to the pool. Possible values are `DEEP_ARCHIVE` or `GLACIER`.
  final Input<String> storageClass;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  TapePoolArgs({
    required this.poolName,
    this.region,
    this.retentionLockTimeInDays,
    this.retentionLockType,
    required this.storageClass,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['poolName'] = poolName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionLockTimeInDaysValue = retentionLockTimeInDays;
    if (retentionLockTimeInDaysValue != null) {
      map['retentionLockTimeInDays'] = retentionLockTimeInDaysValue;
    }
    final retentionLockTypeValue = retentionLockType;
    if (retentionLockTypeValue != null) {
      map['retentionLockType'] = retentionLockTypeValue;
    }
    map['storageClass'] = storageClass;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TapePoolArgs.fromMap(Map<String, dynamic> map) {
    return TapePoolArgs(
      poolName: Input.asInput<String>(map['poolName']),
      region: Input.asOptionalInput<String>(map['region']),
      retentionLockTimeInDays:
          Input.asOptionalInput<int>(map['retentionLockTimeInDays']),
      retentionLockType:
          Input.asOptionalInput<String>(map['retentionLockType']),
      storageClass: Input.asInput<String>(map['storageClass']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
