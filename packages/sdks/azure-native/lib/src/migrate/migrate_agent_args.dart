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
    pulumi.Output<String>? agentName,
    required pulumi.Output<String> modernizeProjectName,
    pulumi.Output<MigrateAgentModelProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      agentName = pulumi.Input.asOptionalInput<String>(agentName),
      modernizeProjectName = pulumi.Input.asInput<String>(modernizeProjectName),
      properties = pulumi.Input.asOptionalInput<MigrateAgentModelProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      agentName: map['agentName'] == null ? null : pulumi.Output.create<String>(map['agentName'] as String),
      modernizeProjectName: pulumi.Output.create<String>(map['modernizeProjectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<MigrateAgentModelProperties>(MigrateAgentModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

