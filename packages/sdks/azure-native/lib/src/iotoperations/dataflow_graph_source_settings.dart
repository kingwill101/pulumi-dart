// ignore_for_file: unused_element, unnecessary_cast


/// DataflowGraph source node settings.
class DataflowGraphSourceSettings {
  /// Reference to the resource in Azure Device Registry where the data in the endpoint originates from.
  final String? assetRef;
  /// List of data sources.
  final List<String> dataSources;
  /// The endpoint reference for the source.
  final String endpointRef;

  /// Creates a new [DataflowGraphSourceSettings].
  /// [assetRef] Reference to the resource in Azure Device Registry where the data in the endpoint originates from.
  /// [dataSources] List of data sources.
  /// [endpointRef] The endpoint reference for the source.
  DataflowGraphSourceSettings({
    this.assetRef,
    required this.dataSources,
    required this.endpointRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetRef': ?assetRef,
      'dataSources': dataSources,
      'endpointRef': endpointRef,
    };
  }

  factory DataflowGraphSourceSettings.fromMap(Map<String, dynamic> map) {
    return DataflowGraphSourceSettings(
      assetRef: map['assetRef'] == null ? null : map['assetRef'] as String,
      dataSources: (map['dataSources'] as List).cast<String>(),
      endpointRef: map['endpointRef'] as String,
    );
  }
}

