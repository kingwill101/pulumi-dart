// ignore_for_file: unused_element, unnecessary_cast

/// Identifies the cloud resource that is referenced by this asset.
class GoogleCloudDataplexV1AssetResourceSpecResponse {
  /// Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: projects/{project_number}/buckets/{bucket_id} projects/{project_number}/datasets/{dataset_id}
  final String name;

  /// Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets.
  final String readAccessMode;

  /// Immutable. Type of resource.
  final String type;

  /// Creates a new [GoogleCloudDataplexV1AssetResourceSpecResponse].
  /// [name] Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: projects/{project_number}/buckets/{bucket_id} projects/{project_number}/datasets/{dataset_id}
  /// [readAccessMode] Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets.
  /// [type] Immutable. Type of resource.
  GoogleCloudDataplexV1AssetResourceSpecResponse({
    required this.name,
    required this.readAccessMode,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['readAccessMode'] = readAccessMode;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDataplexV1AssetResourceSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetResourceSpecResponse(
      name: map['name'] as String,
      readAccessMode: map['readAccessMode'] as String,
      type: map['type'] as String,
    );
  }
}
