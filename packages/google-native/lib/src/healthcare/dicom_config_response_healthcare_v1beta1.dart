// ignore_for_file: unused_element, unnecessary_cast

import 'tag_filter_list_response_healthcare_v1beta1.dart';

/// Specifies the parameters needed for de-identification of DICOM stores.
class DicomConfigResponseHealthcareV1beta1 {
  /// Tag filtering profile that determines which tags to keep/remove.
  final String filterProfile;

  /// List of tags to keep. Remove all other tags.
  final TagFilterListResponseHealthcareV1beta1 keepList;

  /// List of tags to remove. Keep all other tags.
  final TagFilterListResponseHealthcareV1beta1 removeList;

  /// If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual's identity." http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  final bool skipIdRedaction;

  /// Creates a new [DicomConfigResponseHealthcareV1beta1].
  /// [filterProfile] Tag filtering profile that determines which tags to keep/remove.
  /// [keepList] List of tags to keep. Remove all other tags.
  /// [removeList] List of tags to remove. Keep all other tags.
  /// [skipIdRedaction] If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual's identity." http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  DicomConfigResponseHealthcareV1beta1({
    required this.filterProfile,
    required this.keepList,
    required this.removeList,
    required this.skipIdRedaction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filterProfile'] = filterProfile;
    map['keepList'] = keepList.toMap();
    map['removeList'] = removeList.toMap();
    map['skipIdRedaction'] = skipIdRedaction;
    return map;
  }

  factory DicomConfigResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DicomConfigResponseHealthcareV1beta1(
      filterProfile: map['filterProfile'] as String,
      keepList: TagFilterListResponseHealthcareV1beta1.fromMap(
          (map['keepList'] as Map).cast<String, dynamic>()),
      removeList: TagFilterListResponseHealthcareV1beta1.fromMap(
          (map['removeList'] as Map).cast<String, dynamic>()),
      skipIdRedaction: map['skipIdRedaction'] as bool,
    );
  }
}
