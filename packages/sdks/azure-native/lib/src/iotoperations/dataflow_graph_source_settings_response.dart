// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowGraph source node settings.
class DataflowGraphSourceSettingsResponse {
  /// Reference to the resource in Azure Device Registry where the data in the endpoint originates from.
  final pulumi.Input<String?>? assetRef;
  /// List of data sources.
  final pulumi.Input<List<String>> dataSources;
  /// The endpoint reference for the source.
  final pulumi.Input<String> endpointRef;

  /// Creates a new [DataflowGraphSourceSettingsResponse].
  /// [assetRef] Reference to the resource in Azure Device Registry where the data in the endpoint originates from.
  /// [dataSources] List of data sources.
  /// [endpointRef] The endpoint reference for the source.
  const DataflowGraphSourceSettingsResponse({
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
      assetRef: (() { final guardedValue = map['assetRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSources: pulumi.Input.fromValue((map['dataSources'] as List).cast<String>()),
      endpointRef: pulumi.Input.fromValue(map['endpointRef'] as String),
    );
  }
}
