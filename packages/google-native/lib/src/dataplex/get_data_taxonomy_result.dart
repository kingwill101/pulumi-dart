// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDataTaxonomy.
class GetDataTaxonomyResult {
  /// The number of attributes in the DataTaxonomy.
  final int attributeCount;

  /// The number of classes in the DataTaxonomy.
  final int classCount;

  /// The time when the DataTaxonomy was created.
  final String createTime;

  /// Optional. Description of the DataTaxonomy.
  final String description;

  /// Optional. User friendly display name.
  final String displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// Optional. User-defined labels for the DataTaxonomy.
  final Map<String, String> labels;

  /// The relative resource name of the DataTaxonomy, of the form: projects/{project_number}/locations/{location_id}/dataTaxonomies/{data_taxonomy_id}.
  final String name;

  /// System generated globally unique ID for the dataTaxonomy. This ID will be different if the DataTaxonomy is deleted and re-created with the same name.
  final String uid;

  /// The time when the DataTaxonomy was last updated.
  final String updateTime;

  /// Creates a new [GetDataTaxonomyResult].
  /// [attributeCount] The number of attributes in the DataTaxonomy.
  /// [classCount] The number of classes in the DataTaxonomy.
  /// [createTime] The time when the DataTaxonomy was created.
  /// [description] Optional. Description of the DataTaxonomy.
  /// [displayName] Optional. User friendly display name.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Optional. User-defined labels for the DataTaxonomy.
  /// [name] The relative resource name of the DataTaxonomy, of the form: projects/{project_number}/locations/{location_id}/dataTaxonomies/{data_taxonomy_id}.
  /// [uid] System generated globally unique ID for the dataTaxonomy. This ID will be different if the DataTaxonomy is deleted and re-created with the same name.
  /// [updateTime] The time when the DataTaxonomy was last updated.
  GetDataTaxonomyResult({
    required this.attributeCount,
    required this.classCount,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.etag,
    required this.labels,
    required this.name,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributeCount'] = attributeCount;
    map['classCount'] = classCount;
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['labels'] = labels;
    map['name'] = name;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetDataTaxonomyResult.fromMap(Map<String, dynamic> map) {
    return GetDataTaxonomyResult(
      attributeCount: map['attributeCount'] as int,
      classCount: map['classCount'] as int,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
