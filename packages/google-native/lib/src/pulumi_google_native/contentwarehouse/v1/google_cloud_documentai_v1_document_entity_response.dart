// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_documentai_v1_document_entity_normalized_value_response.dart';
import 'google_cloud_documentai_v1_document_page_anchor_response.dart';
import 'google_cloud_documentai_v1_document_provenance_response.dart';
import 'google_cloud_documentai_v1_document_text_anchor_response.dart';

/// An entity that could be a phrase in the text or a property that belongs to the document. It is a known entity type, such as a person, an organization, or location.
class GoogleCloudDocumentaiV1DocumentEntityResponse {
  /// Optional. Confidence of detected Schema entity. Range `[0, 1]`.
  final double confidence;

  /// Optional. Deprecated. Use `id` field instead.
  final String mentionId;

  /// Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.
  final String mentionText;

  /// Optional. Normalized entity value. Absent if the extracted value could not be converted or the type (e.g. address) is not supported for certain parsers. This field is also only populated for certain supported document types.
  final GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse
      normalizedValue;

  /// Optional. Represents the provenance of this entity wrt. the location on the page where it was found.
  final GoogleCloudDocumentaiV1DocumentPageAnchorResponse pageAnchor;

  /// Optional. Entities can be nested to form a hierarchical data structure representing the content in the document.
  final List<GoogleCloudDocumentaiV1DocumentEntityResponse> properties;

  /// Optional. The history of this annotation.
  final GoogleCloudDocumentaiV1DocumentProvenanceResponse provenance;

  /// Optional. Whether the entity will be redacted for de-identification purposes.
  final bool redacted;

  /// Optional. Provenance of the entity. Text anchor indexing into the Document.text.
  final GoogleCloudDocumentaiV1DocumentTextAnchorResponse textAnchor;

  /// Entity type from a schema e.g. `Address`.
  final String type;

  GoogleCloudDocumentaiV1DocumentEntityResponse({
    required this.confidence,
    required this.mentionId,
    required this.mentionText,
    required this.normalizedValue,
    required this.pageAnchor,
    required this.properties,
    required this.provenance,
    required this.redacted,
    required this.textAnchor,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidence'] = confidence;
    map['mentionId'] = mentionId;
    map['mentionText'] = mentionText;
    map['normalizedValue'] = normalizedValue.toMap();
    map['pageAnchor'] = pageAnchor.toMap();
    map['properties'] = Input.encodeList<
        GoogleCloudDocumentaiV1DocumentEntityResponse,
        Map<String, dynamic>>(properties, (value) => value.toMap());
    map['provenance'] = provenance.toMap();
    map['redacted'] = redacted;
    map['textAnchor'] = textAnchor.toMap();
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentEntityResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntityResponse(
      confidence: map['confidence'] as double,
      mentionId: map['mentionId'] as String,
      mentionText: map['mentionText'] as String,
      normalizedValue:
          GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse.fromMap(
              (map['normalizedValue'] as Map).cast<String, dynamic>()),
      pageAnchor: GoogleCloudDocumentaiV1DocumentPageAnchorResponse.fromMap(
          (map['pageAnchor'] as Map).cast<String, dynamic>()),
      properties:
          Input.decodeList<GoogleCloudDocumentaiV1DocumentEntityResponse>(
              map['properties'],
              (value) => GoogleCloudDocumentaiV1DocumentEntityResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      provenance: GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap(
          (map['provenance'] as Map).cast<String, dynamic>()),
      redacted: map['redacted'] as bool,
      textAnchor: GoogleCloudDocumentaiV1DocumentTextAnchorResponse.fromMap(
          (map['textAnchor'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
