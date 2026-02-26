// ignore_for_file: unused_element, unnecessary_cast

class AllowedImagesSettingsImageCriterionCreationDateCondition {
  /// Maximum number of days since the AMI was created.
  final int? maximumDaysSinceCreated;

  AllowedImagesSettingsImageCriterionCreationDateCondition({
    this.maximumDaysSinceCreated,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maximumDaysSinceCreatedValue = maximumDaysSinceCreated;
    if (maximumDaysSinceCreatedValue != null) {
      map['maximumDaysSinceCreated'] = maximumDaysSinceCreatedValue;
    }
    return map;
  }

  factory AllowedImagesSettingsImageCriterionCreationDateCondition.fromMap(
      Map<String, dynamic> map) {
    return AllowedImagesSettingsImageCriterionCreationDateCondition(
      maximumDaysSinceCreated: map['maximumDaysSinceCreated'] == null
          ? null
          : map['maximumDaysSinceCreated'] as int,
    );
  }
}
