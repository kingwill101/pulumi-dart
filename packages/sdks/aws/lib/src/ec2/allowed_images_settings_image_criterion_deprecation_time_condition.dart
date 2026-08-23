// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AllowedImagesSettingsImageCriterionDeprecationTimeCondition {
  /// Maximum number of days since the AMI was deprecated. Setting this to `0` means no deprecated images are allowed.
  final pulumi.Input<int>? maximumDaysSinceDeprecated;

  /// Creates a new [AllowedImagesSettingsImageCriterionDeprecationTimeCondition].
  /// [maximumDaysSinceDeprecated] Maximum number of days since the AMI was deprecated. Setting this to `0` means no deprecated images are allowed.
  const AllowedImagesSettingsImageCriterionDeprecationTimeCondition({
    this.maximumDaysSinceDeprecated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumDaysSinceDeprecated': ?maximumDaysSinceDeprecated,
    };
  }

  factory AllowedImagesSettingsImageCriterionDeprecationTimeCondition.fromMap(Map<String, dynamic> map) {
    return AllowedImagesSettingsImageCriterionDeprecationTimeCondition(
      maximumDaysSinceDeprecated: (() { final guardedValue = map['maximumDaysSinceDeprecated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
