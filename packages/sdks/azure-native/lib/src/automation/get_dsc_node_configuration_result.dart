// ignore_for_file: unused_element, unnecessary_cast

import 'dsc_configuration_association_property_response.dart';

/// Result data returned by getDscNodeConfiguration.
class GetDscNodeConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the configuration of the node.
  final DscConfigurationAssociationPropertyResponse? configuration;
  /// Gets or sets creation time.
  final String? creationTime;
  /// Fully qualified resource Id for the resource
  final String id;
  /// If a new build version of NodeConfiguration is required.
  final bool? incrementNodeConfigurationBuild;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// The name of the resource
  final String name;
  /// Number of nodes with this node configuration assigned
  final double? nodeCount;
  /// Source of node configuration.
  final String? source;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetDscNodeConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configuration] Gets or sets the configuration of the node.
  /// [creationTime] Gets or sets creation time.
  /// [id] Fully qualified resource Id for the resource
  /// [incrementNodeConfigurationBuild] If a new build version of NodeConfiguration is required.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [name] The name of the resource
  /// [nodeCount] Number of nodes with this node configuration assigned
  /// [source] Source of node configuration.
  /// [type] The type of the resource.
  GetDscNodeConfigurationResult({
    required this.azureApiVersion,
    this.configuration,
    this.creationTime,
    required this.id,
    this.incrementNodeConfigurationBuild,
    this.lastModifiedTime,
    required this.name,
    this.nodeCount,
    this.source,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'creationTime': ?creationTime,
      'id': id,
      'incrementNodeConfigurationBuild': ?incrementNodeConfigurationBuild,
      'lastModifiedTime': ?lastModifiedTime,
      'name': name,
      'nodeCount': ?nodeCount,
      'source': ?source,
      'type': type,
    };
  }

  factory GetDscNodeConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetDscNodeConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      configuration: map['configuration'] == null ? null : DscConfigurationAssociationPropertyResponse.fromMap((map['configuration']! as Map).cast<String, dynamic>()),
      creationTime: map['creationTime'] == null ? null : map['creationTime']! as String,
      id: map['id'] as String,
      incrementNodeConfigurationBuild: map['incrementNodeConfigurationBuild'] == null ? null : map['incrementNodeConfigurationBuild']! as bool,
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime']! as String,
      name: map['name'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount']! as double,
      source: map['source'] == null ? null : map['source']! as String,
      type: map['type'] as String,
    );
  }
}

