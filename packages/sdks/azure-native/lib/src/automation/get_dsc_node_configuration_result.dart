// ignore_for_file: unused_element, unnecessary_cast

import 'dsc_configuration_association_property_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDscNodeConfiguration.
class GetDscNodeConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the configuration of the node.
  final DscConfigurationAssociationPropertyResponse? configuration;
  /// Gets or sets creation time.
  final String? creationTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
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
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDscNodeConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configuration] Gets or sets the configuration of the node.
  /// [creationTime] Gets or sets creation time.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [incrementNodeConfigurationBuild] If a new build version of NodeConfiguration is required.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [name] The name of the resource
  /// [nodeCount] Number of nodes with this node configuration assigned
  /// [source] Source of node configuration.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDscNodeConfigurationResult({
    required this.azureApiVersion,
    this.configuration,
    this.creationTime,
    required this.id,
    this.incrementNodeConfigurationBuild,
    this.lastModifiedTime,
    required this.name,
    this.nodeCount,
    this.source,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'configuration': ?configuration?.toMap(),
      'creationTime': ?creationTime,
      'id': id,
      'incrementNodeConfigurationBuild': ?incrementNodeConfigurationBuild,
      'lastModifiedTime': ?lastModifiedTime,
      'name': name,
      'nodeCount': ?nodeCount,
      'source': ?source,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDscNodeConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetDscNodeConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return DscConfigurationAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      incrementNodeConfigurationBuild: (() { final guardedValue = map['incrementNodeConfigurationBuild']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return guardedValue as double; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
