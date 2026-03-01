// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_properties_base.dart';

/// {@template pulumi_migrate_vmware_collectors_operation_args_doc}
/// The set of arguments for VmwareCollectorsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_vmware_collectors_operation_args_doc}
class VmwareCollectorsOperationArgs {
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
  /// VMware collector ARM name
  final pulumi.Input<String>? vmWareCollectorName;

  /// Creates a new [VmwareCollectorsOperationArgs].
  /// [agentProperties] Gets or sets the collector agent properties.
  /// [discoverySiteId] Gets the discovery site id.
  /// [projectName] Assessment Project Name
  /// [provisioningState] The status of the last operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmWareCollectorName] VMware collector ARM name
  VmwareCollectorsOperationArgs({
    CollectorAgentPropertiesBase? agentProperties,
    String? discoverySiteId,
    required String projectName,
    String? provisioningState,
    required String resourceGroupName,
    String? vmWareCollectorName,
  }) :
      agentProperties = pulumi.Input.asOptionalInput<CollectorAgentPropertiesBase>(agentProperties),
      discoverySiteId = pulumi.Input.asOptionalInput<String>(discoverySiteId),
      projectName = pulumi.Input.asInput<String>(projectName),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmWareCollectorName = pulumi.Input.asOptionalInput<String>(vmWareCollectorName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProperties': ?pulumi.Input.mapOptionalInputValue<CollectorAgentPropertiesBase, Map<String, dynamic>>(agentProperties, (value) => value.toMap()),
      'discoverySiteId': ?discoverySiteId,
      'projectName': projectName,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'vmWareCollectorName': ?vmWareCollectorName,
    };
  }

  factory VmwareCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return VmwareCollectorsOperationArgs(
      agentProperties: map['agentProperties'] == null ? null : CollectorAgentPropertiesBase.fromMap((map['agentProperties'] as Map).cast<String, dynamic>()),
      discoverySiteId: map['discoverySiteId'] == null ? null : map['discoverySiteId'] as String,
      projectName: map['projectName'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      vmWareCollectorName: map['vmWareCollectorName'] == null ? null : map['vmWareCollectorName'] as String,
    );
  }
}

