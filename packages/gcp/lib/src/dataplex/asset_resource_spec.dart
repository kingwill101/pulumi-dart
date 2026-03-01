// ignore_for_file: unused_element, unnecessary_cast

class AssetResourceSpec {
  /// Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: `projects/{project_number}/buckets/{bucket_id}` `projects/{project_number}/datasets/{dataset_id}`
  final String? name;

  /// Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets. Possible values: DIRECT, MANAGED
  final String? readAccessMode;

  /// Required. Immutable. Type of resource. Possible values: STORAGE_BUCKET, BIGQUERY_DATASET
  ///
  /// - - -
  final String type;

  /// Creates a new [AssetResourceSpec].
  /// [name] Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: `projects/{project_number}/buckets/{bucket_id}` `projects/{project_number}/datasets/{dataset_id}`
  /// [readAccessMode] Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets. Possible values: DIRECT, MANAGED
  /// [type] Required. Immutable. Type of resource. Possible values: STORAGE_BUCKET, BIGQUERY_DATASET
  AssetResourceSpec({this.name, this.readAccessMode, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'readAccessMode': ?readAccessMode,
      'type': type,
    };
  }

  factory AssetResourceSpec.fromMap(Map<String, dynamic> map) {
    return AssetResourceSpec(
      name: map['name'] == null ? null : map['name'] as String,
      readAccessMode: map['readAccessMode'] == null
          ? null
          : map['readAccessMode'] as String,
      type: map['type'] as String,
    );
  }
}
