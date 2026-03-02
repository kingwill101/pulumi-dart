// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_retention.dart';

/// Definition of ObjectLockRule
class ObjectLockRule {
  /// The default Object Lock retention mode and period that you want to apply to new objects placed in the specified bucket. If Object Lock is turned on, bucket settings require both ``Mode`` and a period of either ``Days`` or ``Years``. You cannot specify ``Days`` and ``Years`` at the same time. For more information about allowable values for mode and period, see [DefaultRetention](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html). The container element for specifying the default Object Lock retention settings for new objects placed in the specified bucket.   +  The ``DefaultRetention`` settings require both a mode and a period.  +  The ``DefaultRetention`` period can be either ``Days`` or ``Years`` but you must select one. You cannot specify ``Days`` and ``Years`` at the same time.
  final pulumi.Input<DefaultRetention>? defaultRetention;

  /// Creates a new [ObjectLockRule].
  /// [defaultRetention] The default Object Lock retention mode and period that you want to apply to new objects placed in the specified bucket. If Object Lock is turned on, bucket settings require both ``Mode`` and a period of either ``Days`` or ``Years``. You cannot specify ``Days`` and ``Years`` at the same time. For more information about allowable values for mode and period, see [DefaultRetention](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html). The container element for specifying the default Object Lock retention settings for new objects placed in the specified bucket.   +  The ``DefaultRetention`` settings require both a mode and a period.  +  The ``DefaultRetention`` period can be either ``Days`` or ``Years`` but you must select one. You cannot specify ``Days`` and ``Years`` at the same time.
  ObjectLockRule({
    this.defaultRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRetention': ?pulumi.Input.mapOptionalInputValue<DefaultRetention, Map<String, dynamic>>(defaultRetention, (value) => value.toMap()),
    };
  }

  factory ObjectLockRule.fromMap(Map<String, dynamic> map) {
    return ObjectLockRule(
      defaultRetention: map['defaultRetention'] == null ? null : (DefaultRetention.fromMap((map['defaultRetention']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

