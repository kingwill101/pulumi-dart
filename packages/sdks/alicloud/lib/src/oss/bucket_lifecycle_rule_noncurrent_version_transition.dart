// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleRuleNoncurrentVersionTransition {
  /// Specifies the number of days noncurrent object versions transition.
  final pulumi.Input<int> days;
  /// Specifies whether the lifecycle rule applies to objects based on their last access time. If set to `true`, the rule applies to objects based on their last access time; if set to `false`, the rule applies to objects based on their last modified time. If configure the rule based on the last access time, please enable `access_monitor` first.
  final pulumi.Input<bool>? isAccessTime;
  /// Specifies whether to convert the storage class of non-Standard objects back to Standard after the objects are accessed. It takes effect only when the IsAccessTime parameter is set to true. If set to `true`, converts the storage class of the objects to Standard; if set to `false`, does not convert the storage class of the objects to Standard.
  final pulumi.Input<bool>? returnToStdWhenVisit;
  /// The [storage class](https://www.alibabacloud.com/help/doc-detail/51374.htm) to apply. Can be "Standard", "IA", "Archive", "ColdArchive" and "DeepColdArchive". Defaults to "Standard". "ColdArchive" is available since 1.203.0. "DeepColdArchive" is available since 1.209.0.
  final pulumi.Input<String> storageClass;

  /// Creates a new [BucketLifecycleRuleNoncurrentVersionTransition].
  /// [days] Specifies the number of days noncurrent object versions transition.
  /// [isAccessTime] Specifies whether the lifecycle rule applies to objects based on their last access time. If set to `true`, the rule applies to objects based on their last access time; if set to `false`, the rule applies to objects based on their last modified time. If configure the rule based on the last access time, please enable `access_monitor` first.
  /// [returnToStdWhenVisit] Specifies whether to convert the storage class of non-Standard objects back to Standard after the objects are accessed. It takes effect only when the IsAccessTime parameter is set to true. If set to `true`, converts the storage class of the objects to Standard; if set to `false`, does not convert the storage class of the objects to Standard.
  /// [storageClass] The [storage class](https://www.alibabacloud.com/help/doc-detail/51374.htm) to apply. Can be "Standard", "IA", "Archive", "ColdArchive" and "DeepColdArchive". Defaults to "Standard". "ColdArchive" is available since 1.203.0. "DeepColdArchive" is available since 1.209.0.
  BucketLifecycleRuleNoncurrentVersionTransition({
    required this.days,
    this.isAccessTime,
    this.returnToStdWhenVisit,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
      'isAccessTime': ?isAccessTime,
      'returnToStdWhenVisit': ?returnToStdWhenVisit,
      'storageClass': storageClass,
    };
  }

  factory BucketLifecycleRuleNoncurrentVersionTransition.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleNoncurrentVersionTransition(
      days: (map['days'] as int).input(),
      isAccessTime: map['isAccessTime'] == null ? null : (map['isAccessTime']! as bool).input(),
      returnToStdWhenVisit: map['returnToStdWhenVisit'] == null ? null : (map['returnToStdWhenVisit']! as bool).input(),
      storageClass: (map['storageClass'] as String).input(),
    );
  }
}

