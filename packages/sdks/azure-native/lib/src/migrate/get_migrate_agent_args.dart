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
      agentName: (map['agentName'] as String).input(),
      modernizeProjectName: (map['modernizeProjectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

