// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_provenance_response.dart';
import 'google_cloud_documentai_v1_document_text_anchor_response.dart';

/// This message is used for text changes aka. OCR corrections.
class GoogleCloudDocumentaiV1DocumentTextChangeResponse {
  /// The text that replaces the text identified in the `text_anchor`.
  final String changedText;
  /// The history of this annotation.
  final List<GoogleCloudDocumentaiV1DocumentProvenanceResponse> provenance;
  /// Provenance of the correction. Text anchor indexing into the Document.text. There can only be a single `TextAnchor.text_segments` element. If the start and end index of the text segment are the same, the text change is inserted before that index.
  final GoogleCloudDocumentaiV1DocumentTextAnchorResponse textAnchor;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentTextChangeResponse].
  /// [changedText] The text that replaces the text identified in the `text_anchor`.
  /// [provenance] The history of this annotation.
  /// [textAnchor] Provenance of the correction. Text anchor indexing into the Document.text. There can only be a single `TextAnchor.text_segments` element. If the start and end index of the text segment are the same, the text change is inserted before that index.
  GoogleCloudDocumentaiV1DocumentTextChangeResponse({
    required this.changedText,
    required this.provenance,
    required this.textAnchor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changedText': changedText,
      'provenance': pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentProvenanceResponse, Map<String, dynamic>>(provenance, (value) => value.toMap()),
      'textAnchor': textAnchor.toMap(),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentTextChangeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentTextChangeResponse(
      changedText: map['changedText'] as String,
      provenance: pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentProvenanceResponse>(map['provenance'], (value) => GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap((value as Map).cast<String, dynamic>())),
      textAnchor: GoogleCloudDocumentaiV1DocumentTextAnchorResponse.fromMap((map['textAnchor'] as Map).cast<String, dynamic>()),
    );
  }
}

