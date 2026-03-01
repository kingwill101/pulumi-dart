// ignore_for_file: unused_element, unnecessary_cast

import 'image_config_response_healthcare_v1beta1.dart';

/// Specifies a selection of tags and an `Action` to apply to each one.
class ActionResponse {
  /// Inspect image and transform sensitive burnt-in text. Doesn't apply to elements nested in a sequence, which revert to `Keep`. Supported [tags](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html): PixelData
  final ImageConfigResponseHealthcareV1beta1 cleanImageTag;

  /// Inspect text and transform sensitive text. Configurable via TextConfig. Supported Value Representations: AE, LO, LT, PN, SH, ST, UC, UT, DA, DT, AS
  final Map<String, dynamic> cleanTextTag;

  /// Delete tag.
  final Map<String, dynamic> deleteTag;

  /// Keep tag unchanged.
  final Map<String, dynamic> keepTag;

  /// Select all tags with the listed tag IDs, names, or Value Representations (VRs). Examples: ID: "00100010" Keyword: "PatientName" VR: "PN"
  final List<String> queries;

  /// Recursively apply DICOM de-id to tags nested in a sequence. Supported [Value Representation] (http://dicom.nema.org/medical/dicom/2018e/output/chtml/part05/sect_6.2.html#table_6.2-1): SQ
  final Map<String, dynamic> recurseTag;

  /// Replace UID with a new generated UID. Supported [Value Representation] (http://dicom.nema.org/medical/dicom/2018e/output/chtml/part05/sect_6.2.html#table_6.2-1): UI
  final Map<String, dynamic> regenUidTag;

  /// Replace with empty tag.
  final Map<String, dynamic> removeTag;

  /// Reset tag to a placeholder value.
  final Map<String, dynamic> resetTag;

  /// Creates a new [ActionResponse].
  /// [cleanImageTag] Inspect image and transform sensitive burnt-in text. Doesn't apply to elements nested in a sequence, which revert to `Keep`. Supported [tags](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part06/chapter_6.html): PixelData
  /// [cleanTextTag] Inspect text and transform sensitive text. Configurable via TextConfig. Supported Value Representations: AE, LO, LT, PN, SH, ST, UC, UT, DA, DT, AS
  /// [deleteTag] Delete tag.
  /// [keepTag] Keep tag unchanged.
  /// [queries] Select all tags with the listed tag IDs, names, or Value Representations (VRs). Examples: ID: "00100010" Keyword: "PatientName" VR: "PN"
  /// [recurseTag] Recursively apply DICOM de-id to tags nested in a sequence. Supported [Value Representation] (http://dicom.nema.org/medical/dicom/2018e/output/chtml/part05/sect_6.2.html#table_6.2-1): SQ
  /// [regenUidTag] Replace UID with a new generated UID. Supported [Value Representation] (http://dicom.nema.org/medical/dicom/2018e/output/chtml/part05/sect_6.2.html#table_6.2-1): UI
  /// [removeTag] Replace with empty tag.
  /// [resetTag] Reset tag to a placeholder value.
  ActionResponse({
    required this.cleanImageTag,
    required this.cleanTextTag,
    required this.deleteTag,
    required this.keepTag,
    required this.queries,
    required this.recurseTag,
    required this.regenUidTag,
    required this.removeTag,
    required this.resetTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanImageTag': cleanImageTag.toMap(),
      'cleanTextTag': cleanTextTag,
      'deleteTag': deleteTag,
      'keepTag': keepTag,
      'queries': queries,
      'recurseTag': recurseTag,
      'regenUidTag': regenUidTag,
      'removeTag': removeTag,
      'resetTag': resetTag,
    };
  }

  factory ActionResponse.fromMap(Map<String, dynamic> map) {
    return ActionResponse(
      cleanImageTag: ImageConfigResponseHealthcareV1beta1.fromMap(
        (map['cleanImageTag'] as Map).cast<String, dynamic>(),
      ),
      cleanTextTag: (map['cleanTextTag'] as Map).cast<String, dynamic>(),
      deleteTag: (map['deleteTag'] as Map).cast<String, dynamic>(),
      keepTag: (map['keepTag'] as Map).cast<String, dynamic>(),
      queries: (map['queries'] as List).cast<String>(),
      recurseTag: (map['recurseTag'] as Map).cast<String, dynamic>(),
      regenUidTag: (map['regenUidTag'] as Map).cast<String, dynamic>(),
      removeTag: (map['removeTag'] as Map).cast<String, dynamic>(),
      resetTag: (map['resetTag'] as Map).cast<String, dynamic>(),
    );
  }
}
