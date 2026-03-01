// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_confluent_get_connector_args_doc}
/// Arguments for getConnector.
/// {@endtemplate}
/// {@macro pulumi_confluent_get_connector_args_doc}
class GetConnectorArgs {
  /// Confluent kafka or schema registry cluster id
  final pulumi.Input<String> clusterId;
  /// Confluent connector name
  final pulumi.Input<String> connectorName;
  /// Confluent environment id
  final pulumi.Input<String> environmentId;
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectorArgs].
  /// [clusterId] Confluent kafka or schema registry cluster id
  /// [connectorName] Confluent connector name
  /// [environmentId] Confluent environment id
  /// [organizationName] Organization resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConnectorArgs({
    required String clusterId,
    required String connectorName,
    required String environmentId,
    required String organizationName,
    required String resourceGroupName,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      connectorName = pulumi.Input.asInput<String>(connectorName),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationName = pulumi.Input.asInput<String>(organizationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'connectorName': connectorName,
      'environmentId': environmentId,
      'organizationName': organizationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorArgs(
      clusterId: map['clusterId'] as String,
      connectorName: map['connectorName'] as String,
      environmentId: map['environmentId'] as String,
      organizationName: map['organizationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

