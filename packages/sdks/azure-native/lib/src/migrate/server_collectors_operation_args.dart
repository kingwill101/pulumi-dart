// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_properties_base.dart';

/// {@template pulumi_migrate_server_collectors_operation_args_doc}
/// The set of arguments for ServerCollectorsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_server_collectors_operation_args_doc}
class ServerCollectorsOperationArgs {
  /// Gets or sets the collector agent properties.
  final pulumi.Input<CollectorAgentPropertiesBase>? agentProperties;
  /// Gets the discovery site id.
  final pulumi.Input<String>? discoverySiteId;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The status of the last operation.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Physical server collector ARM name
  final pulumi.Input<String>? serverCollectorName;

  /// Creates a new [ServerCollectorsOperationArgs].
  /// [agentProperties] Gets or sets the collector agent properties.
  /// [discoverySiteId] Gets the discovery site id.
  /// [projectName] Assessment Project Name
  /// [provisioningState] The status of the last operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverCollectorName] Physical server collector ARM name
  ServerCollectorsOperationArgs({
    this.agentProperties,
    this.discoverySiteId,
    required this.projectName,
    this.provisioningState,
    required this.resourceGroupName,
    this.serverCollectorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProperties': ?pulumi.Input.mapOptionalInputValue<CollectorAgentPropertiesBase, Map<String, dynamic>>(agentProperties, (value) => value.toMap()),
      'discoverySiteId': ?discoverySiteId,
      'projectName': projectName,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'serverCollectorName': ?serverCollectorName,
    };
  }

  factory ServerCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return ServerCollectorsOperationArgs(
      agentProperties: (() { final guardedValue = map['agentProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CollectorAgentPropertiesBase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      discoverySiteId: (() { final guardedValue = map['discoverySiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverCollectorName: (() { final guardedValue = map['serverCollectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

