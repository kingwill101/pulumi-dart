// ignore_for_file: unused_element, unnecessary_cast

import 'floorsetting_floor_setting_metadata_multi_language_detection.dart';

class FloorsettingFloorSettingMetadata {
  /// Metadata for multi language detection.
  /// Structure is documented below.
  final FloorsettingFloorSettingMetadataMultiLanguageDetection?
      multiLanguageDetection;

  /// Creates a new [FloorsettingFloorSettingMetadata].
  /// [multiLanguageDetection] Metadata for multi language detection.
  FloorsettingFloorSettingMetadata({
    this.multiLanguageDetection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final multiLanguageDetectionValue = multiLanguageDetection;
    if (multiLanguageDetectionValue != null) {
      map['multiLanguageDetection'] = multiLanguageDetectionValue.toMap();
    }
    return map;
  }

  factory FloorsettingFloorSettingMetadata.fromMap(Map<String, dynamic> map) {
    return FloorsettingFloorSettingMetadata(
      multiLanguageDetection: map['multiLanguageDetection'] == null
          ? null
          : FloorsettingFloorSettingMetadataMultiLanguageDetection.fromMap(
              (map['multiLanguageDetection'] as Map).cast<String, dynamic>()),
    );
  }
}
