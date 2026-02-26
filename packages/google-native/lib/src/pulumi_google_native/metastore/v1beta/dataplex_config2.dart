// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how metastore metadata should be integrated with the Dataplex service.
class DataplexConfig2 {
  /// A reference to the Lake resources that this metastore service is attached to. The key is the lake resource name. Example: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  final Map<String, String>? lakeResources;

  DataplexConfig2({
    this.lakeResources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lakeResourcesValue = lakeResources;
    if (lakeResourcesValue != null) {
      map['lakeResources'] = lakeResourcesValue;
    }
    return map;
  }

  factory DataplexConfig2.fromMap(Map<String, dynamic> map) {
    return DataplexConfig2(
      lakeResources: map['lakeResources'] == null
          ? null
          : (map['lakeResources'] as Map).cast<String, String>(),
    );
  }
}
