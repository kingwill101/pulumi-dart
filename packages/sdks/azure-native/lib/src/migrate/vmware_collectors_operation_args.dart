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
    this.agentProperties,
    this.discoverySiteId,
    required this.projectName,
    this.provisioningState,
    required this.resourceGroupName,
    this.vmWareCollectorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProperties':
          ?pulumi.Input.mapOptionalInputValue<
            CollectorAgentPropertiesBase,
            Map<String, dynamic>
          >(agentProperties, (value) => value.toMap()),
      'discoverySiteId': ?discoverySiteId,
      'projectName': projectName,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'vmWareCollectorName': ?vmWareCollectorName,
    };
  }

  factory VmwareCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return VmwareCollectorsOperationArgs(
      agentProperties: (() {
        final guardedValue = map['agentProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CollectorAgentPropertiesBase.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      discoverySiteId: (() {
        final guardedValue = map['discoverySiteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      vmWareCollectorName: (() {
        final guardedValue = map['vmWareCollectorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
