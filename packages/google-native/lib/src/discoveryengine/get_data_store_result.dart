// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDataStore.
class GetDataStoreResult {
  /// Immutable. The content config of the data store. If this field is unset, the server behavior defaults to ContentConfig.NO_CONTENT.
  final String contentConfig;

  /// Timestamp the DataStore was created at.
  final String createTime;

  /// The id of the default Schema asscociated to this data store.
  final String defaultSchemaId;

  /// The data store display name. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  final String displayName;

  /// Immutable. The industry vertical that the data store registers.
  final String industryVertical;

  /// Immutable. The full resource name of the data store. Format: `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final String name;

  /// The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MEDIA`: `SOLUTION_TYPE_RECOMMENDATION` and `SOLUTION_TYPE_SEARCH`. * `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is automatically enrolled. Other solutions cannot be enrolled.
  final List<String> solutionTypes;

  /// Creates a new [GetDataStoreResult].
  /// [contentConfig] Immutable. The content config of the data store. If this field is unset, the server behavior defaults to ContentConfig.NO_CONTENT.
  /// [createTime] Timestamp the DataStore was created at.
  /// [defaultSchemaId] The id of the default Schema asscociated to this data store.
  /// [displayName] The data store display name. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [industryVertical] Immutable. The industry vertical that the data store registers.
  /// [name] Immutable. The full resource name of the data store. Format: `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  /// [solutionTypes] The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MEDIA`: `SOLUTION_TYPE_RECOMMENDATION` and `SOLUTION_TYPE_SEARCH`. * `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is automatically enrolled. Other solutions cannot be enrolled.
  GetDataStoreResult({
    required this.contentConfig,
    required this.createTime,
    required this.defaultSchemaId,
    required this.displayName,
    required this.industryVertical,
    required this.name,
    required this.solutionTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentConfig'] = contentConfig;
    map['createTime'] = createTime;
    map['defaultSchemaId'] = defaultSchemaId;
    map['displayName'] = displayName;
    map['industryVertical'] = industryVertical;
    map['name'] = name;
    map['solutionTypes'] = solutionTypes;
    return map;
  }

  factory GetDataStoreResult.fromMap(Map<String, dynamic> map) {
    return GetDataStoreResult(
      contentConfig: map['contentConfig'] as String,
      createTime: map['createTime'] as String,
      defaultSchemaId: map['defaultSchemaId'] as String,
      displayName: map['displayName'] as String,
      industryVertical: map['industryVertical'] as String,
      name: map['name'] as String,
      solutionTypes: (map['solutionTypes'] as List).cast<String>(),
    );
  }
}
