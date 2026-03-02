// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowGraph source node settings.
class DataflowGraphSourceSettingsResponse {
  /// Reference to the resource in Azure Device Registry where the data in the endpoint originates from.
  final pulumi.Input<String>? assetRef;
  /// List of data sources.
  final pulumi.Input<List<String>> dataSources;
  /// The endpoint reference for the source.
  final pulumi.Input<String> endpointRef;

  /// Creates a new [DataflowGraphSourceSettingsResponse].
  /// [assetRef] Reference to the resource in Azure Device Registry where the data in the endpoint originates from.
  /// [dataSources] List of data sources.
  /// [endpointRef] The endpoint reference for the source.
  DataflowGraphSourceSettingsResponse({
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

  factory DataflowGraphSourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphSourceSettingsResponse(
      assetRef: map['assetRef'] == null ? null : (map['assetRef']! as String).input(),
      dataSources: ((map['dataSources'] as List).cast<String>()).input(),
      endpointRef: (map['endpointRef'] as String).input(),
    );
  }
}

