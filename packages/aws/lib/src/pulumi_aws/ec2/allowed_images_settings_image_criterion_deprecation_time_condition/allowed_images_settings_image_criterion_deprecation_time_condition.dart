// ignore_for_file: unused_element, unnecessary_cast

class AllowedImagesSettingsImageCriterionDeprecationTimeCondition {
  /// Maximum number of days since the AMI was deprecated. Setting this to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> means no deprecated images are allowed.
  final int? maximumDaysSinceDeprecated;

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
