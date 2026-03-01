// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_fleetspace_account_args_doc}
/// Arguments for getFleetspaceAccount.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_fleetspace_account_args_doc}
class GetFleetspaceAccountArgs {
  /// Cosmos DB fleet name. Needs to be unique under a subscription.
  final pulumi.Input<String> fleetName;
  /// Cosmos DB fleetspace account name.
  final pulumi.Input<String> fleetspaceAccountName;
  /// Cosmos DB fleetspace name. Needs to be unique under a fleet.
  final pulumi.Input<String> fleetspaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFleetspaceAccountArgs].
  /// [fleetName] Cosmos DB fleet name. Needs to be unique under a subscription.
  /// [fleetspaceAccountName] Cosmos DB fleetspace account name.
  /// [fleetspaceName] Cosmos DB fleetspace name. Needs to be unique under a fleet.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFleetspaceAccountArgs({
    required pulumi.Output<String> fleetName,
    required pulumi.Output<String> fleetspaceAccountName,
    required pulumi.Output<String> fleetspaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      fleetName = pulumi.Input.asInput<String>(fleetName),
      fleetspaceAccountName = pulumi.Input.asInput<String>(fleetspaceAccountName),
      fleetspaceName = pulumi.Input.asInput<String>(fleetspaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'fleetspaceAccountName': fleetspaceAccountName,
      'fleetspaceName': fleetspaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFleetspaceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetspaceAccountArgs(
      fleetName: pulumi.Output.create<String>(map['fleetName'] as String),
      fleetspaceAccountName: pulumi.Output.create<String>(map['fleetspaceAccountName'] as String),
      fleetspaceName: pulumi.Output.create<String>(map['fleetspaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

