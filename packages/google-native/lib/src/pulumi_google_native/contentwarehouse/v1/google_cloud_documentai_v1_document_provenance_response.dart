// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_provenance_parent_response.dart';

/// Structure to identify provenance relationships between annotations in different revisions.
class GoogleCloudDocumentaiV1DocumentProvenanceResponse {
  /// References to the original elements that are replaced.
  final List<GoogleCloudDocumentaiV1DocumentProvenanceParentResponse> parents;

  /// The index of the revision that produced this element.
  final int revision;

  /// The type of provenance operation.
  final String type;

  GoogleCloudDocumentaiV1DocumentProvenanceResponse({
    required this.parents,
    required this.revision,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parents'] = pulumi.Input.encodeList<
        GoogleCloudDocumentaiV1DocumentProvenanceParentResponse,
        Map<String, dynamic>>(parents, (value) => value.toMap());
    map['revision'] = revision;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentProvenanceResponse(
      parents: pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentProvenanceParentResponse>(
          map['parents'],
          (value) =>
              GoogleCloudDocumentaiV1DocumentProvenanceParentResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      revision: map['revision'] as int,
      type: map['type'] as String,
    );
  }
}
