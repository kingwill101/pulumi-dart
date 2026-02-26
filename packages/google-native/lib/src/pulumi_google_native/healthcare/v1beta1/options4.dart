// ignore_for_file: unused_element, unnecessary_cast

import 'image_config2.dart';
import 'options_primary_ids.dart';

/// Specifies additional options to apply to the base profile.
class Options4 {
  /// Set Clean Descriptors Option.
  final Map<String, dynamic>? cleanDescriptors;

  /// Apply `Action.clean_image` to [`PixelData`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html) as configured.
  final ImageConfig2? cleanImage;

  /// Set `Action` for [`StudyInstanceUID`, `SeriesInstanceUID`, `SOPInstanceUID`, and `MediaStorageSOPInstanceUID`](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html).
  final OptionsPrimaryIds? primaryIds;

  Options4({
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

  factory Options4.fromMap(Map<String, dynamic> map) {
    return Options4(
      cleanDescriptors: map['cleanDescriptors'] == null
          ? null
          : (map['cleanDescriptors'] as Map).cast<String, dynamic>(),
      cleanImage: map['cleanImage'] == null
          ? null
          : ImageConfig2.fromMap(
              (map['cleanImage'] as Map).cast<String, dynamic>()),
      primaryIds: map['primaryIds'] == null
          ? null
          : OptionsPrimaryIds.fromValue(map['primaryIds'] as String),
    );
  }
}
