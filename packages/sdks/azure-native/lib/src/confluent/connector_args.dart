// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_info_base.dart';

/// {@template pulumi_confluent_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_confluent_connector_args_doc}
class ConnectorArgs {
  /// Confluent kafka or schema registry cluster id
  final pulumi.Input<String> clusterId;
  /// Connector Info Base
  final pulumi.Input<ConnectorInfoBase?>? connectorBasicInfo;
  /// Confluent connector name
  final pulumi.Input<String?>? connectorName;
  /// Connector Service type info base properties.
  final pulumi.Input<dynamic>? connectorServiceTypeInfo;
  /// Confluent environment id
  final pulumi.Input<String> environmentId;
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// The connection information consumed by applications.
  final pulumi.Input<dynamic>? partnerConnectorInfo;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ConnectorArgs].
  /// [clusterId] Confluent kafka or schema registry cluster id
  /// [connectorBasicInfo] Connector Info Base
  /// [connectorName] Confluent connector name
  /// [connectorServiceTypeInfo] Connector Service type info base properties.
  /// [environmentId] Confluent environment id
  /// [organizationName] Organization resource name
  /// [partnerConnectorInfo] The connection information consumed by applications.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ConnectorArgs({
    required this.clusterId,
    this.connectorBasicInfo,
    this.connectorName,
    this.connectorServiceTypeInfo,
    required this.environmentId,
    required this.organizationName,
    this.partnerConnectorInfo,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'connectorBasicInfo': ?pulumi.Input.mapOptionalInputValue<ConnectorInfoBase, Map<String, dynamic>>(connectorBasicInfo, (value) => value.toMap()),
      'connectorName': ?connectorName,
      'connectorServiceTypeInfo': ?connectorServiceTypeInfo,
      'environmentId': environmentId,
      'organizationName': organizationName,
      'partnerConnectorInfo': ?partnerConnectorInfo,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      connectorBasicInfo: (() { final guardedValue = map['connectorBasicInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorInfoBase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectorName: (() { final guardedValue = map['connectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorServiceTypeInfo: (() { final guardedValue = map['connectorServiceTypeInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      partnerConnectorInfo: (() { final guardedValue = map['partnerConnectorInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
