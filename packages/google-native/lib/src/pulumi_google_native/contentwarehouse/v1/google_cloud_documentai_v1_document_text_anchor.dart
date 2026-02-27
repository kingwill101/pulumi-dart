// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_documentai_v1_document_text_anchor_text_segment.dart';

/// Text reference indexing into the Document.text.
class GoogleCloudDocumentaiV1DocumentTextAnchor {
  /// Contains the content of the text span so that users do not have to look it up in the text_segments. It is always populated for formFields.
  final String? content;

  /// The text segments from the Document.text.
  final List<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>?
      textSegments;

  GoogleCloudDocumentaiV1DocumentTextAnchor({
    this.content,
    this.textSegments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final textSegmentsValue = textSegments;
    if (textSegmentsValue != null) {
      map['textSegments'] = Input.encodeList<
          GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment,
          Map<String, dynamic>>(textSegmentsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentTextAnchor.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentTextAnchor(
      content: map['content'] == null ? null : map['content'] as String,
      textSegments: map['textSegments'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>(
              map['textSegments'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
