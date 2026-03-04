// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleRuleTransition {
  /// Specifies the time before which the rules take effect. The date must conform to the ISO8601 format and always be UTC 00:00. For example: 2002-10-11T00:00:00.000Z indicates that parts created before 2002-10-11T00:00:00.000Z are deleted, and parts created after this time (including this time) are not deleted.
  final pulumi.Input<String>? createdBeforeDate;

  /// Specifies the number of days noncurrent object versions transition.
  final pulumi.Input<int>? days;

  /// Specifies whether the lifecycle rule applies to objects based on their last access time. If set to `true`, the rule applies to objects based on their last access time; if set to `false`, the rule applies to objects based on their last modified time. If configure the rule based on the last access time, please enable `access_monitor` first.
  final pulumi.Input<bool>? isAccessTime;

  /// Specifies whether to convert the storage class of non-Standard objects back to Standard after the objects are accessed. It takes effect only when the IsAccessTime parameter is set to true. If set to `true`, converts the storage class of the objects to Standard; if set to `false`, does not convert the storage class of the objects to Standard.
  final pulumi.Input<bool>? returnToStdWhenVisit;

  /// The [storage class](https://www.alibabacloud.com/help/doc-detail/51374.htm) to apply. Can be "Standard", "IA", "Archive", "ColdArchive" and "DeepColdArchive". Defaults to "Standard". "ColdArchive" is available since 1.203.0. "DeepColdArchive" is available since 1.209.0.
  final pulumi.Input<String> storageClass;

  /// Creates a new [BucketLifecycleRuleTransition].
  /// [createdBeforeDate] Specifies the time before which the rules take effect. The date must conform to the ISO8601 format and always be UTC 00:00. For example: 2002-10-11T00:00:00.000Z indicates that parts created before 2002-10-11T00:00:00.000Z are deleted, and parts created after this time (including this time) are not deleted.
  /// [days] Specifies the number of days noncurrent object versions transition.
  /// [isAccessTime] Specifies whether the lifecycle rule applies to objects based on their last access time. If set to `true`, the rule applies to objects based on their last access time; if set to `false`, the rule applies to objects based on their last modified time. If configure the rule based on the last access time, please enable `access_monitor` first.
  /// [returnToStdWhenVisit] Specifies whether to convert the storage class of non-Standard objects back to Standard after the objects are accessed. It takes effect only when the IsAccessTime parameter is set to true. If set to `true`, converts the storage class of the objects to Standard; if set to `false`, does not convert the storage class of the objects to Standard.
  /// [storageClass] The [storage class](https://www.alibabacloud.com/help/doc-detail/51374.htm) to apply. Can be "Standard", "IA", "Archive", "ColdArchive" and "DeepColdArchive". Defaults to "Standard". "ColdArchive" is available since 1.203.0. "DeepColdArchive" is available since 1.209.0.
  BucketLifecycleRuleTransition({
    this.createdBeforeDate,
    this.days,
    this.isAccessTime,
    this.returnToStdWhenVisit,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdBeforeDate': ?createdBeforeDate,
      'days': ?days,
      'isAccessTime': ?isAccessTime,
      'returnToStdWhenVisit': ?returnToStdWhenVisit,
      'storageClass': storageClass,
    };
  }

  factory BucketLifecycleRuleTransition.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleTransition(
      createdBeforeDate: (() {
        final guardedValue = map['createdBeforeDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      days: (() {
        final guardedValue = map['days'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      isAccessTime: (() {
        final guardedValue = map['isAccessTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      returnToStdWhenVisit: (() {
        final guardedValue = map['returnToStdWhenVisit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}
