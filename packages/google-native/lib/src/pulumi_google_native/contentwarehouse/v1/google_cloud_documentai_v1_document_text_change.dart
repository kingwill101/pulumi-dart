// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_documentai_v1_document_provenance.dart';
import 'google_cloud_documentai_v1_document_text_anchor.dart';

/// This message is used for text changes aka. OCR corrections.
class GoogleCloudDocumentaiV1DocumentTextChange {
  /// The text that replaces the text identified in the `text_anchor`.
  final String? changedText;

  /// The history of this annotation.
  final List<GoogleCloudDocumentaiV1DocumentProvenance>? provenance;

  /// Provenance of the correction. Text anchor indexing into the Document.text. There can only be a single `TextAnchor.text_segments` element. If the start and end index of the text segment are the same, the text change is inserted before that index.
  final GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1DocumentTextChange({
    this.changedText,
    this.provenance,
    this.textAnchor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final changedTextValue = changedText;
    if (changedTextValue != null) {
      map['changedText'] = changedTextValue;
    }
    final provenanceValue = provenance;
    if (provenanceValue != null) {
      map['provenance'] = Input.encodeList<
          GoogleCloudDocumentaiV1DocumentProvenance,
          Map<String, dynamic>>(provenanceValue, (value) => value.toMap());
    }
    final textAnchorValue = textAnchor;
    if (textAnchorValue != null) {
      map['textAnchor'] = textAnchorValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentTextChange.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentTextChange(
      changedText:
          map['changedText'] == null ? null : map['changedText'] as String,
      provenance: map['provenance'] == null
          ? null
          : Input.decodeList<GoogleCloudDocumentaiV1DocumentProvenance>(
              map['provenance'],
              (value) => GoogleCloudDocumentaiV1DocumentProvenance.fromMap(
                  (value as Map).cast<String, dynamic>())),
      textAnchor: map['textAnchor'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentTextAnchor.fromMap(
              (map['textAnchor'] as Map).cast<String, dynamic>()),
    );
  }
}
