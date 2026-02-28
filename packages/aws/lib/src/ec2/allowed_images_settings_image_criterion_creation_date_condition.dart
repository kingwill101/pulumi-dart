// ignore_for_file: unused_element, unnecessary_cast


class AllowedImagesSettingsImageCriterionCreationDateCondition {
  /// Maximum number of days since the AMI was created.
  final int? maximumDaysSinceCreated;

  /// Creates a new [AllowedImagesSettingsImageCriterionCreationDateCondition].
  /// [maximumDaysSinceCreated] Maximum number of days since the AMI was created.
  AllowedImagesSettingsImageCriterionCreationDateCondition({
    this.maximumDaysSinceCreated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumDaysSinceCreated': ?maximumDaysSinceCreated,
    };
  }

  factory AllowedImagesSettingsImageCriterionCreationDateCondition.fromMap(Map<String, dynamic> map) {
    return AllowedImagesSettingsImageCriterionCreationDateCondition(
      maximumDaysSinceCreated: map['maximumDaysSinceCreated'] == null ? null : map['maximumDaysSinceCreated'] as int,
    );
  }
}

