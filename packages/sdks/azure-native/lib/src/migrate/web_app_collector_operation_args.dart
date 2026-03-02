// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_properties_base.dart';

/// {@template pulumi_migrate_web_app_collector_operation_args_doc}
/// The set of arguments for WebAppCollectorOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_web_app_collector_operation_args_doc}
class WebAppCollectorOperationArgs {
  /// Gets or sets the collector agent properties.
  final pulumi.Input<CollectorAgentPropertiesBase>? agentProperties;
  /// Web app collector ARM name.
  final pulumi.Input<String>? collectorName;
  /// Gets the discovery site id.
  final pulumi.Input<String>? discoverySiteId;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppCollectorOperationArgs].
  /// [agentProperties] Gets or sets the collector agent properties.
  /// [collectorName] Web app collector ARM name.
  /// [discoverySiteId] Gets the discovery site id.
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  WebAppCollectorOperationArgs({
    this.agentProperties,
    this.collectorName,
    this.discoverySiteId,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProperties': ?pulumi.Input.mapOptionalInputValue<CollectorAgentPropertiesBase, Map<String, dynamic>>(agentProperties, (value) => value.toMap()),
      'collectorName': ?collectorName,
      'discoverySiteId': ?discoverySiteId,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WebAppCollectorOperationArgs.fromMap(Map<String, dynamic> map) {
    return WebAppCollectorOperationArgs(
      agentProperties: map['agentProperties'] == null ? null : (CollectorAgentPropertiesBase.fromMap((map['agentProperties']! as Map).cast<String, dynamic>())).input(),
      collectorName: map['collectorName'] == null ? null : (map['collectorName']! as String).input(),
      discoverySiteId: map['discoverySiteId'] == null ? null : (map['discoverySiteId']! as String).input(),
      projectName: (map['projectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

