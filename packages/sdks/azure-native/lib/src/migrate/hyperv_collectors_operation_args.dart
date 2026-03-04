// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_properties_base.dart';

/// {@template pulumi_migrate_hyperv_collectors_operation_args_doc}
/// The set of arguments for HypervCollectorsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_hyperv_collectors_operation_args_doc}
class HypervCollectorsOperationArgs {
  /// Gets or sets the collector agent properties.
  final pulumi.Input<CollectorAgentPropertiesBase>? agentProperties;

  /// Gets the discovery site id.
  final pulumi.Input<String>? discoverySiteId;

  /// Hyper-V collector ARM name
  final pulumi.Input<String>? hypervCollectorName;

  /// Assessment Project Name
  final pulumi.Input<String> projectName;

  /// The status of the last operation.
  final pulumi.Input<String>? provisioningState;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [HypervCollectorsOperationArgs].
  /// [agentProperties] Gets or sets the collector agent properties.
  /// [discoverySiteId] Gets the discovery site id.
  /// [hypervCollectorName] Hyper-V collector ARM name
  /// [projectName] Assessment Project Name
  /// [provisioningState] The status of the last operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  HypervCollectorsOperationArgs({
    this.agentProperties,
    this.discoverySiteId,
    this.hypervCollectorName,
    required this.projectName,
    this.provisioningState,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProperties':
          ?pulumi.Input.mapOptionalInputValue<
            CollectorAgentPropertiesBase,
            Map<String, dynamic>
          >(agentProperties, (value) => value.toMap()),
      'discoverySiteId': ?discoverySiteId,
      'hypervCollectorName': ?hypervCollectorName,
      'projectName': projectName,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory HypervCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return HypervCollectorsOperationArgs(
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
      hypervCollectorName: (() {
        final guardedValue = map['hypervCollectorName'];
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
    );
  }
}
