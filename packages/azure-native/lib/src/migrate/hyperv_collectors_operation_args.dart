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
    CollectorAgentPropertiesBase? agentProperties,
    String? discoverySiteId,
    String? hypervCollectorName,
    required String projectName,
    String? provisioningState,
    required String resourceGroupName,
  }) :
      agentProperties = pulumi.Input.asOptionalInput<CollectorAgentPropertiesBase>(agentProperties),
      discoverySiteId = pulumi.Input.asOptionalInput<String>(discoverySiteId),
      hypervCollectorName = pulumi.Input.asOptionalInput<String>(hypervCollectorName),
      projectName = pulumi.Input.asInput<String>(projectName),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProperties': ?pulumi.Input.mapOptionalInputValue<CollectorAgentPropertiesBase, Map<String, dynamic>>(agentProperties, (value) => value.toMap()),
      'discoverySiteId': ?discoverySiteId,
      'hypervCollectorName': ?hypervCollectorName,
      'projectName': projectName,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory HypervCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return HypervCollectorsOperationArgs(
      agentProperties: map['agentProperties'] == null ? null : CollectorAgentPropertiesBase.fromMap((map['agentProperties'] as Map).cast<String, dynamic>()),
      discoverySiteId: map['discoverySiteId'] == null ? null : map['discoverySiteId'] as String,
      hypervCollectorName: map['hypervCollectorName'] == null ? null : map['hypervCollectorName'] as String,
      projectName: map['projectName'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

