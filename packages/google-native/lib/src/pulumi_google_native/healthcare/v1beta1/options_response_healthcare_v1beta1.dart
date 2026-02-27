// ignore_for_file: unused_element, unnecessary_cast

import 'image_config_response_healthcare_v1beta1.dart';

/// Specifies additional options to apply to the base profile.
class OptionsResponseHealthcareV1beta1 {
  /// Set Clean Descriptors Option.
  final Map<String, dynamic> cleanDescriptors;

  /// Apply `Action.clean_image` to [`PixelData`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html) as configured.
  final ImageConfigResponseHealthcareV1beta1 cleanImage;

  /// Set `Action` for [`StudyInstanceUID`, `SeriesInstanceUID`, `SOPInstanceUID`, and `MediaStorageSOPInstanceUID`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html).
  final String primaryIds;

  OptionsResponseHealthcareV1beta1({
    required this.cleanDescriptors,
    required this.cleanImage,
    required this.primaryIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cleanDescriptors'] = cleanDescriptors;
    map['cleanImage'] = cleanImage.toMap();
    map['primaryIds'] = primaryIds;
    return map;
  }

  factory OptionsResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return OptionsResponseHealthcareV1beta1(
      cleanDescriptors:
          (map['cleanDescriptors'] as Map).cast<String, dynamic>(),
      cleanImage: ImageConfigResponseHealthcareV1beta1.fromMap(
          (map['cleanImage'] as Map).cast<String, dynamic>()),
      primaryIds: map['primaryIds'] as String,
    );
  }
}
