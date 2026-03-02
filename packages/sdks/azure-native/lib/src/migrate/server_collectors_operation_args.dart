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
      agentProperties: map['agentProperties'] == null ? null : (CollectorAgentPropertiesBase.fromMap((map['agentProperties'] as Map).cast<String, dynamic>())).input(),
      discoverySiteId: map['discoverySiteId'] == null ? null : (map['discoverySiteId'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverCollectorName: map['serverCollectorName'] == null ? null : (map['serverCollectorName'] as String).input(),
    );
  }
}

