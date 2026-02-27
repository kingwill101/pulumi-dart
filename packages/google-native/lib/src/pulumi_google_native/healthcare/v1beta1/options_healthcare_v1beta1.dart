// ignore_for_file: unused_element, unnecessary_cast

import 'image_config_healthcare_v1beta1.dart';
import 'options_primary_ids.dart';

/// Specifies additional options to apply to the base profile.
class OptionsHealthcareV1beta1 {
  /// Set Clean Descriptors Option.
  final Map<String, dynamic>? cleanDescriptors;

  /// Apply `Action.clean_image` to [`PixelData`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html) as configured.
  final ImageConfigHealthcareV1beta1? cleanImage;

  /// Set `Action` for [`StudyInstanceUID`, `SeriesInstanceUID`, `SOPInstanceUID`, and `MediaStorageSOPInstanceUID`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html).
  final OptionsPrimaryIds? primaryIds;

  OptionsHealthcareV1beta1({
    this.cleanDescriptors,
    this.cleanImage,
    this.primaryIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cleanDescriptorsValue = cleanDescriptors;
    if (cleanDescriptorsValue != null) {
      map['cleanDescriptors'] = cleanDescriptorsValue;
    }
    final cleanImageValue = cleanImage;
    if (cleanImageValue != null) {
      map['cleanImage'] = cleanImageValue.toMap();
    }
    final primaryIdsValue = primaryIds;
    if (primaryIdsValue != null) {
      map['primaryIds'] = primaryIdsValue.value;
    }
    return map;
  }

  factory OptionsHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return OptionsHealthcareV1beta1(
      cleanDescriptors: map['cleanDescriptors'] == null
          ? null
          : (map['cleanDescriptors'] as Map).cast<String, dynamic>(),
      cleanImage: map['cleanImage'] == null
          ? null
          : ImageConfigHealthcareV1beta1.fromMap(
              (map['cleanImage'] as Map).cast<String, dynamic>()),
      primaryIds: map['primaryIds'] == null
          ? null
          : OptionsPrimaryIds.fromValue(map['primaryIds'] as String),
    );
  }
}
