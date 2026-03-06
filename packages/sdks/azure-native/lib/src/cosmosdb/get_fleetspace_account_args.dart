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
  const GetFleetspaceAccountArgs({
    required this.fleetName,
    required this.fleetspaceAccountName,
    required this.fleetspaceName,
    required this.resourceGroupName,
  });

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
      fleetName: pulumi.Input.fromValue(map['fleetName'] as String),
      fleetspaceAccountName: pulumi.Input.fromValue(map['fleetspaceAccountName'] as String),
      fleetspaceName: pulumi.Input.fromValue(map['fleetspaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

