// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_fleet_analytic_args_doc}
/// Arguments for getFleetAnalytic.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_fleet_analytic_args_doc}
class GetFleetAnalyticArgs {
  /// Cosmos DB fleetAnalytics name.
  final pulumi.Input<String> fleetAnalyticsName;
  /// Cosmos DB fleet name. Needs to be unique under a subscription.
  final pulumi.Input<String> fleetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFleetAnalyticArgs].
  /// [fleetAnalyticsName] Cosmos DB fleetAnalytics name.
  /// [fleetName] Cosmos DB fleet name. Needs to be unique under a subscription.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFleetAnalyticArgs({
    required this.fleetAnalyticsName,
    required this.fleetName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetAnalyticsName': fleetAnalyticsName,
      'fleetName': fleetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFleetAnalyticArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetAnalyticArgs(
      fleetAnalyticsName: (map['fleetAnalyticsName'] as String).input(),
      fleetName: (map['fleetName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

