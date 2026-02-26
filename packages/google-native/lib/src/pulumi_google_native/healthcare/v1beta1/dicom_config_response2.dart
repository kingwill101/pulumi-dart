// ignore_for_file: unused_element, unnecessary_cast

import 'tag_filter_list_response2.dart';

/// Specifies the parameters needed for de-identification of DICOM stores.
class DicomConfigResponse2 {
  /// Tag filtering profile that determines which tags to keep/remove.
  final String filterProfile;

  /// List of tags to keep. Remove all other tags.
  final TagFilterListResponse2 keepList;

  /// List of tags to remove. Keep all other tags.
  final TagFilterListResponse2 removeList;

  /// If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual's identity." http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  final bool skipIdRedaction;

  DicomConfigResponse2({
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

  factory DicomConfigResponse2.fromMap(Map<String, dynamic> map) {
    return DicomConfigResponse2(
      filterProfile: map['filterProfile'] as String,
      keepList: TagFilterListResponse2.fromMap(
          (map['keepList'] as Map).cast<String, dynamic>()),
      removeList: TagFilterListResponse2.fromMap(
          (map['removeList'] as Map).cast<String, dynamic>()),
      skipIdRedaction: map['skipIdRedaction'] as bool,
    );
  }
}
