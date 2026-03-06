// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AllowedImagesSettingsImageCriterionCreationDateCondition {
  /// Maximum number of days since the AMI was created.
  final pulumi.Input<int>? maximumDaysSinceCreated;

  /// Creates a new [AllowedImagesSettingsImageCriterionCreationDateCondition].
  /// [maximumDaysSinceCreated] Maximum number of days since the AMI was created.
  const AllowedImagesSettingsImageCriterionCreationDateCondition({
    this.maximumDaysSinceCreated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumDaysSinceCreated': ?maximumDaysSinceCreated,
    };
  }

  factory AllowedImagesSettingsImageCriterionCreationDateCondition.fromMap(Map<String, dynamic> map) {
    return AllowedImagesSettingsImageCriterionCreationDateCondition(
      maximumDaysSinceCreated: (() { final guardedValue = map['maximumDaysSinceCreated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

