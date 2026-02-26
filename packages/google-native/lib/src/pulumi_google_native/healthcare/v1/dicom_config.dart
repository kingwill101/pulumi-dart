// ignore_for_file: unused_element, unnecessary_cast

import 'dicom_config_filter_profile.dart';
import 'tag_filter_list.dart';

/// Specifies the parameters needed for de-identification of DICOM stores.
class DicomConfig {
  /// Tag filtering profile that determines which tags to keep/remove.
  final DicomConfigFilterProfile? filterProfile;

  /// List of tags to keep. Remove all other tags.
  final TagFilterList? keepList;

  /// List of tags to remove. Keep all other tags.
  final TagFilterList? removeList;

  /// If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual's identity." http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  final bool? skipIdRedaction;

  DicomConfig({
    this.filterProfile,
    this.keepList,
    this.removeList,
    this.skipIdRedaction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterProfileValue = filterProfile;
    if (filterProfileValue != null) {
      map['filterProfile'] = filterProfileValue.value;
    }
    final keepListValue = keepList;
    if (keepListValue != null) {
      map['keepList'] = keepListValue.toMap();
    }
    final removeListValue = removeList;
    if (removeListValue != null) {
      map['removeList'] = removeListValue.toMap();
    }
    final skipIdRedactionValue = skipIdRedaction;
    if (skipIdRedactionValue != null) {
      map['skipIdRedaction'] = skipIdRedactionValue;
    }
    return map;
  }

  factory DicomConfig.fromMap(Map<String, dynamic> map) {
    return DicomConfig(
      filterProfile: map['filterProfile'] == null
          ? null
          : DicomConfigFilterProfile.fromValue(map['filterProfile'] as String),
      keepList: map['keepList'] == null
          ? null
          : TagFilterList.fromMap(
              (map['keepList'] as Map).cast<String, dynamic>()),
      removeList: map['removeList'] == null
          ? null
          : TagFilterList.fromMap(
              (map['removeList'] as Map).cast<String, dynamic>()),
      skipIdRedaction: map['skipIdRedaction'] == null
          ? null
          : map['skipIdRedaction'] as bool,
    );
  }
}
