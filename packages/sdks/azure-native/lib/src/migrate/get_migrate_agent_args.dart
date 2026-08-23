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
  const GetMigrateAgentArgs({
    required this.agentName,
    required this.modernizeProjectName,
    required this.resourceGroupName,
    this.subscriptionId,
  });

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
      agentName: pulumi.Input.fromValue(map['agentName'] as String),
      modernizeProjectName: pulumi.Input.fromValue(map['modernizeProjectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
