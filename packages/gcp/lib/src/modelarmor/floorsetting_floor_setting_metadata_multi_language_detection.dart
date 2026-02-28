// ignore_for_file: unused_element, unnecessary_cast

class FloorsettingFloorSettingMetadataMultiLanguageDetection {
  /// If true, multi language detection will be enabled.
  final bool enableMultiLanguageDetection;

  /// Creates a new [FloorsettingFloorSettingMetadataMultiLanguageDetection].
  /// [enableMultiLanguageDetection] If true, multi language detection will be enabled.
  FloorsettingFloorSettingMetadataMultiLanguageDetection({
    required this.enableMultiLanguageDetection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableMultiLanguageDetection'] = enableMultiLanguageDetection;
    return map;
  }

  factory FloorsettingFloorSettingMetadataMultiLanguageDetection.fromMap(
      Map<String, dynamic> map) {
    return FloorsettingFloorSettingMetadataMultiLanguageDetection(
      enableMultiLanguageDetection: map['enableMultiLanguageDetection'] as bool,
    );
  }
}
