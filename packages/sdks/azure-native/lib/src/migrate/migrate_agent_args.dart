// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_agent_model_properties.dart';

/// {@template pulumi_migrate_migrate_agent_args_doc}
/// The set of arguments for MigrateAgent.
/// {@endtemplate}
/// {@macro pulumi_migrate_migrate_agent_args_doc}
class MigrateAgentArgs {
  /// MigrateAgent name.
  final pulumi.Input<String>? agentName;
  /// ModernizeProject name.
  final pulumi.Input<String> modernizeProjectName;
  /// MigrateAgent model properties.
  final pulumi.Input<MigrateAgentModelProperties>? properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Subscription Id in which project was created.
  final pulumi.Input<String>? subscriptionId;
  /// Gets or sets the resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MigrateAgentArgs].
  /// [agentName] MigrateAgent name.
  /// [modernizeProjectName] ModernizeProject name.
  /// [properties] MigrateAgent model properties.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [subscriptionId] Azure Subscription Id in which project was created.
  /// [tags] Gets or sets the resource tags.
  MigrateAgentArgs({
    this.agentName,
    required this.modernizeProjectName,
    this.properties,
    required this.resourceGroupName,
    this.subscriptionId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': ?agentName,
      'modernizeProjectName': modernizeProjectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MigrateAgentModelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory MigrateAgentArgs.fromMap(Map<String, dynamic> map) {
    return MigrateAgentArgs(
      agentName: map['agentName'] == null ? null : (map['agentName'] as String).input(),
      modernizeProjectName: (map['modernizeProjectName'] as String).input(),
      properties: map['properties'] == null ? null : (MigrateAgentModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

