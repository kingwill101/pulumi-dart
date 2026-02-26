// ignore_for_file: unused_element, unnecessary_cast

/// The parent element the current element is based on. Used for referencing/aligning, removal and replacement operations.
class GoogleCloudDocumentaiV1DocumentProvenanceParentResponse {
  /// The index of the parent item in the corresponding item list (eg. list of entities, properties within entities, etc.) in the parent revision.
  final int index;

  /// The index of the index into current revision's parent_ids list.
  final int revision;

  GoogleCloudDocumentaiV1DocumentProvenanceParentResponse({
    required this.index,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['index'] = index;
    map['revision'] = revision;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentProvenanceParentResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentProvenanceParentResponse(
      index: map['index'] as int,
      revision: map['revision'] as int,
    );
  }
}
