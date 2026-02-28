// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_provenance_parent.dart';
import 'google_cloud_documentai_v1_document_provenance_type.dart';

/// Structure to identify provenance relationships between annotations in different revisions.
class GoogleCloudDocumentaiV1DocumentProvenance {
  /// The Id of this operation. Needs to be unique within the scope of the revision.
  final int? id;

  /// References to the original elements that are replaced.
  final List<GoogleCloudDocumentaiV1DocumentProvenanceParent>? parents;

  /// The index of the revision that produced this element.
  final int? revision;

  /// The type of provenance operation.
  final GoogleCloudDocumentaiV1DocumentProvenanceType? type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentProvenance].
  /// [id] The Id of this operation. Needs to be unique within the scope of the revision.
  /// [parents] References to the original elements that are replaced.
  /// [revision] The index of the revision that produced this element.
  /// [type] The type of provenance operation.
  GoogleCloudDocumentaiV1DocumentProvenance({
    this.id,
    this.parents,
    this.revision,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final parentsValue = parents;
    if (parentsValue != null) {
      map['parents'] = pulumi.Input.encodeList<
          GoogleCloudDocumentaiV1DocumentProvenanceParent,
          Map<String, dynamic>>(parentsValue, (value) => value.toMap());
    }
    final revisionValue = revision;
    if (revisionValue != null) {
      map['revision'] = revisionValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentProvenance.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentProvenance(
      id: map['id'] == null ? null : map['id'] as int,
      parents: map['parents'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDocumentaiV1DocumentProvenanceParent>(
              map['parents'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentProvenanceParent.fromMap(
                      (value as Map).cast<String, dynamic>())),
      revision: map['revision'] == null ? null : map['revision'] as int,
      type: map['type'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentProvenanceType.fromValue(
              map['type'] as String),
    );
  }
}
