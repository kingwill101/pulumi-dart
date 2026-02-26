// ignore_for_file: unused_element, unnecessary_cast

import 'image_config_response2.dart';

/// Specifies additional options to apply to the base profile.
class OptionsResponse4 {
  /// Set Clean Descriptors Option.
  final Map<String, dynamic> cleanDescriptors;

  /// Apply `Action.clean_image` to [`PixelData`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html) as configured.
  final ImageConfigResponse2 cleanImage;

  /// Set `Action` for [`StudyInstanceUID`, `SeriesInstanceUID`, `SOPInstanceUID`, and `MediaStorageSOPInstanceUID`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html).
  final String primaryIds;

  OptionsResponse4({
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

  factory OptionsResponse4.fromMap(Map<String, dynamic> map) {
    return OptionsResponse4(
      cleanDescriptors:
          (map['cleanDescriptors'] as Map).cast<String, dynamic>(),
      cleanImage: ImageConfigResponse2.fromMap(
          (map['cleanImage'] as Map).cast<String, dynamic>()),
      primaryIds: map['primaryIds'] as String,
    );
  }
}
