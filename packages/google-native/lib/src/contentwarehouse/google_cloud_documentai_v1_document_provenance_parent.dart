// ignore_for_file: unused_element, unnecessary_cast

/// The parent element the current element is based on. Used for referencing/aligning, removal and replacement operations.
class GoogleCloudDocumentaiV1DocumentProvenanceParent {
  /// The id of the parent provenance.
  final int? id;

  /// The index of the parent item in the corresponding item list (eg. list of entities, properties within entities, etc.) in the parent revision.
  final int? index;

  /// The index of the index into current revision's parent_ids list.
  final int? revision;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentProvenanceParent].
  /// [id] The id of the parent provenance.
  /// [index] The index of the parent item in the corresponding item list (eg. list of entities, properties within entities, etc.) in the parent revision.
  /// [revision] The index of the index into current revision's parent_ids list.
  GoogleCloudDocumentaiV1DocumentProvenanceParent({
    this.id,
    this.index,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final indexValue = index;
    if (indexValue != null) {
      map['index'] = indexValue;
    }
    final revisionValue = revision;
    if (revisionValue != null) {
      map['revision'] = revisionValue;
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentProvenanceParent.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentProvenanceParent(
      id: map['id'] == null ? null : map['id'] as int,
      index: map['index'] == null ? null : map['index'] as int,
      revision: map['revision'] == null ? null : map['revision'] as int,
    );
  }
}
