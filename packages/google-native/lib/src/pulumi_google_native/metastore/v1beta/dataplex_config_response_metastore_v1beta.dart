// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how metastore metadata should be integrated with the Dataplex service.
class DataplexConfigResponseMetastoreV1beta {
  /// A reference to the Lake resources that this metastore service is attached to. The key is the lake resource name. Example: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  final Map<String, String> lakeResources;

  DataplexConfigResponseMetastoreV1beta({
    required this.lakeResources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lakeResources'] = lakeResources;
    return map;
  }

  factory DataplexConfigResponseMetastoreV1beta.fromMap(
      Map<String, dynamic> map) {
    return DataplexConfigResponseMetastoreV1beta(
      lakeResources: (map['lakeResources'] as Map).cast<String, String>(),
    );
  }
}
