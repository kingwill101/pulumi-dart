// ignore_for_file: unused_element, unnecessary_cast

import 'dicom_config_filter_profile_healthcare_v1beta1.dart';
import 'tag_filter_list_healthcare_v1beta1.dart';

/// Specifies the parameters needed for de-identification of DICOM stores.
class DicomConfigHealthcareV1beta1 {
  /// Tag filtering profile that determines which tags to keep/remove.
  final DicomConfigFilterProfileHealthcareV1beta1? filterProfile;
  /// List of tags to keep. Remove all other tags.
  final TagFilterListHealthcareV1beta1? keepList;
  /// List of tags to remove. Keep all other tags.
  final TagFilterListHealthcareV1beta1? removeList;
  /// If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual's identity." http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  final bool? skipIdRedaction;

  /// Creates a new [DicomConfigHealthcareV1beta1].
  /// [filterProfile] Tag filtering profile that determines which tags to keep/remove.
  /// [keepList] List of tags to keep. Remove all other tags.
  /// [removeList] List of tags to remove. Keep all other tags.
  /// [skipIdRedaction] If true, skip replacing StudyInstanceUID, SeriesInstanceUID, SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched. The Cloud Healthcare API regenerates these UIDs by default based on the DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly to an individual out of context, given access to the original images, or to a database of the original images containing the UIDs, it would be possible to recover the individual's identity." http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  DicomConfigHealthcareV1beta1({
    this.filterProfile,
    this.keepList,
    this.removeList,
    this.skipIdRedaction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterProfile': ?filterProfile == null ? null : filterProfile!.value,
      'keepList': ?keepList == null ? null : keepList!.toMap(),
      'removeList': ?removeList == null ? null : removeList!.toMap(),
      'skipIdRedaction': ?skipIdRedaction,
    };
  }

  factory DicomConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return DicomConfigHealthcareV1beta1(
      filterProfile: map['filterProfile'] == null ? null : DicomConfigFilterProfileHealthcareV1beta1.fromValue(map['filterProfile'] as String),
      keepList: map['keepList'] == null ? null : TagFilterListHealthcareV1beta1.fromMap((map['keepList'] as Map).cast<String, dynamic>()),
      removeList: map['removeList'] == null ? null : TagFilterListHealthcareV1beta1.fromMap((map['removeList'] as Map).cast<String, dynamic>()),
      skipIdRedaction: map['skipIdRedaction'] == null ? null : map['skipIdRedaction'] as bool,
    );
  }
}

