// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_entity_normalized_value.dart';
import 'google_cloud_documentai_v1_document_page_anchor.dart';
import 'google_cloud_documentai_v1_document_provenance.dart';
import 'google_cloud_documentai_v1_document_text_anchor.dart';

/// An entity that could be a phrase in the text or a property that belongs to the document. It is a known entity type, such as a person, an organization, or location.
class GoogleCloudDocumentaiV1DocumentEntity {
  /// Optional. Confidence of detected Schema entity. Range `[0, 1]`.
  final double? confidence;

  /// Optional. Canonical id. This will be a unique value in the entity list for this document.
  final String? id;

  /// Optional. Deprecated. Use `id` field instead.
  final String? mentionId;

  /// Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.
  final String? mentionText;

  /// Optional. Normalized entity value. Absent if the extracted value could not be converted or the type (e.g. address) is not supported for certain parsers. This field is also only populated for certain supported document types.
  final GoogleCloudDocumentaiV1DocumentEntityNormalizedValue? normalizedValue;

  /// Optional. Represents the provenance of this entity wrt. the location on the page where it was found.
  final GoogleCloudDocumentaiV1DocumentPageAnchor? pageAnchor;

  /// Optional. Entities can be nested to form a hierarchical data structure representing the content in the document.
  final List<GoogleCloudDocumentaiV1DocumentEntity>? properties;

  /// Optional. The history of this annotation.
  final GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// Optional. Whether the entity will be redacted for de-identification purposes.
  final bool? redacted;

  /// Optional. Provenance of the entity. Text anchor indexing into the Document.text.
  final GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  /// Entity type from a schema e.g. `Address`.
  final String type;

  GoogleCloudDocumentaiV1DocumentEntity({
    this.confidence,
    this.id,
    this.mentionId,
    this.mentionText,
    this.normalizedValue,
    this.pageAnchor,
    this.properties,
    this.provenance,
    this.redacted,
    this.textAnchor,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidenceValue = confidence;
    if (confidenceValue != null) {
      map['confidence'] = confidenceValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final mentionIdValue = mentionId;
    if (mentionIdValue != null) {
      map['mentionId'] = mentionIdValue;
    }
    final mentionTextValue = mentionText;
    if (mentionTextValue != null) {
      map['mentionText'] = mentionTextValue;
    }
    final normalizedValueValue = normalizedValue;
    if (normalizedValueValue != null) {
      map['normalizedValue'] = normalizedValueValue.toMap();
    }
    final pageAnchorValue = pageAnchor;
    if (pageAnchorValue != null) {
      map['pageAnchor'] = pageAnchorValue.toMap();
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.encodeList<
          GoogleCloudDocumentaiV1DocumentEntity,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    final provenanceValue = provenance;
    if (provenanceValue != null) {
      map['provenance'] = provenanceValue.toMap();
    }
    final redactedValue = redacted;
    if (redactedValue != null) {
      map['redacted'] = redactedValue;
    }
    final textAnchorValue = textAnchor;
    if (textAnchorValue != null) {
      map['textAnchor'] = textAnchorValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentEntity.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntity(
      confidence:
          map['confidence'] == null ? null : map['confidence'] as double,
      id: map['id'] == null ? null : map['id'] as String,
      mentionId: map['mentionId'] == null ? null : map['mentionId'] as String,
      mentionText:
          map['mentionText'] == null ? null : map['mentionText'] as String,
      normalizedValue: map['normalizedValue'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromMap(
              (map['normalizedValue'] as Map).cast<String, dynamic>()),
      pageAnchor: map['pageAnchor'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageAnchor.fromMap(
              (map['pageAnchor'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentEntity>(
              map['properties'],
              (value) => GoogleCloudDocumentaiV1DocumentEntity.fromMap(
                  (value as Map).cast<String, dynamic>())),
      provenance: map['provenance'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentProvenance.fromMap(
              (map['provenance'] as Map).cast<String, dynamic>()),
      redacted: map['redacted'] == null ? null : map['redacted'] as bool,
      textAnchor: map['textAnchor'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentTextAnchor.fromMap(
              (map['textAnchor'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
