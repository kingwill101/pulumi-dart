// ignore_for_file: unused_element, unnecessary_cast

class AllowedImagesSettingsImageCriterionDeprecationTimeCondition {
  /// Maximum number of days since the AMI was deprecated. Setting this to `0` means no deprecated images are allowed.
  final int? maximumDaysSinceDeprecated;

  /// Creates a new [AllowedImagesSettingsImageCriterionDeprecationTimeCondition].
  /// [maximumDaysSinceDeprecated] Maximum number of days since the AMI was deprecated. Setting this to `0` means no deprecated images are allowed.
  AllowedImagesSettingsImageCriterionDeprecationTimeCondition({
    this.maximumDaysSinceDeprecated,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maximumDaysSinceDeprecatedValue = maximumDaysSinceDeprecated;
    if (maximumDaysSinceDeprecatedValue != null) {
      map['maximumDaysSinceDeprecated'] = maximumDaysSinceDeprecatedValue;
    }
    return map;
  }

  factory AllowedImagesSettingsImageCriterionDeprecationTimeCondition.fromMap(
      Map<String, dynamic> map) {
    return AllowedImagesSettingsImageCriterionDeprecationTimeCondition(
      maximumDaysSinceDeprecated: map['maximumDaysSinceDeprecated'] == null
          ? null
          : map['maximumDaysSinceDeprecated'] as int,
    );
  }
}
