// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_text_anchor_text_segment_response.dart';

/// Text reference indexing into the Document.text.
class GoogleCloudDocumentaiV1DocumentTextAnchorResponse {
  /// Contains the content of the text span so that users do not have to look it up in the text_segments. It is always populated for formFields.
  final String content;
  /// The text segments from the Document.text.
  final List<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse> textSegments;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentTextAnchorResponse].
  /// [content] Contains the content of the text span so that users do not have to look it up in the text_segments. It is always populated for formFields.
  /// [textSegments] The text segments from the Document.text.
  GoogleCloudDocumentaiV1DocumentTextAnchorResponse({
    required this.content,
    required this.textSegments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'textSegments': pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse, Map<String, dynamic>>(textSegments, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentTextAnchorResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentTextAnchorResponse(
      content: map['content'] as String,
      textSegments: pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse>(map['textSegments'], (value) => GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

