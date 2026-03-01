// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how metastore metadata should be integrated with the Dataplex service.
class DataplexConfigResponse {
  /// A reference to the Lake resources that this metastore service is attached to. The key is the lake resource name. Example: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  final Map<String, String> lakeResources;

  /// Creates a new [DataplexConfigResponse].
  /// [lakeResources] A reference to the Lake resources that this metastore service is attached to. The key is the lake resource name. Example: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  DataplexConfigResponse({required this.lakeResources});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'lakeResources': lakeResources};
  }

  factory DataplexConfigResponse.fromMap(Map<String, dynamic> map) {
    return DataplexConfigResponse(
      lakeResources: (map['lakeResources'] as Map).cast<String, String>(),
    );
  }
}
