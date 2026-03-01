// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_migrate_agent_args_doc}
/// Arguments for getMigrateAgent.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_migrate_agent_args_doc}
class GetMigrateAgentArgs {
  /// MigrateAgent name.
  final pulumi.Input<String> agentName;
  /// ModernizeProject name.
  final pulumi.Input<String> modernizeProjectName;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Subscription Id in which project was created.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GetMigrateAgentArgs].
  /// [agentName] MigrateAgent name.
  /// [modernizeProjectName] ModernizeProject name.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [subscriptionId] Azure Subscription Id in which project was created.
  GetMigrateAgentArgs({
    required pulumi.Output<String> agentName,
    required pulumi.Output<String> modernizeProjectName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
  }) :
      agentName = pulumi.Input.asInput<String>(agentName),
      modernizeProjectName = pulumi.Input.asInput<String>(modernizeProjectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': agentName,
      'modernizeProjectName': modernizeProjectName,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GetMigrateAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrateAgentArgs(
      agentName: pulumi.Output.create<String>(map['agentName'] as String),
      modernizeProjectName: pulumi.Output.create<String>(map['modernizeProjectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

