// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_fleetspace_args_doc}
/// Arguments for getFleetspace.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_fleetspace_args_doc}
class GetFleetspaceArgs {
  /// Cosmos DB fleet name. Needs to be unique under a subscription.
  final pulumi.Input<String> fleetName;
  /// Cosmos DB fleetspace name. Needs to be unique under a fleet.
  final pulumi.Input<String> fleetspaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFleetspaceArgs].
  /// [fleetName] Cosmos DB fleet name. Needs to be unique under a subscription.
  /// [fleetspaceName] Cosmos DB fleetspace name. Needs to be unique under a fleet.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFleetspaceArgs({
    required String fleetName,
    required String fleetspaceName,
    required String resourceGroupName,
  }) :
      fleetName = pulumi.Input.asInput<String>(fleetName),
      fleetspaceName = pulumi.Input.asInput<String>(fleetspaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'fleetspaceName': fleetspaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFleetspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetspaceArgs(
      fleetName: map['fleetName'] as String,
      fleetspaceName: map['fleetspaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

