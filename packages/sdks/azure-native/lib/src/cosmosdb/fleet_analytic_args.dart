// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_fleet_analytic_args_doc}
/// The set of arguments for FleetAnalytic.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_fleet_analytic_args_doc}
class FleetAnalyticArgs {
  /// Cosmos DB fleetAnalytics name.
  final pulumi.Input<String>? fleetAnalyticsName;
  /// Cosmos DB fleet name. Needs to be unique under a subscription.
  final pulumi.Input<String> fleetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The type of the fleet analytics resource.
  final pulumi.Input<String>? storageLocationType;
  /// The unique identifier of the fleet analytics resource.
  final pulumi.Input<String>? storageLocationUri;

  /// Creates a new [FleetAnalyticArgs].
  /// [fleetAnalyticsName] Cosmos DB fleetAnalytics name.
  /// [fleetName] Cosmos DB fleet name. Needs to be unique under a subscription.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageLocationType] The type of the fleet analytics resource.
  /// [storageLocationUri] The unique identifier of the fleet analytics resource.
  FleetAnalyticArgs({
    this.fleetAnalyticsName,
    required this.fleetName,
    required this.resourceGroupName,
    this.storageLocationType,
    this.storageLocationUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetAnalyticsName': ?fleetAnalyticsName,
      'fleetName': fleetName,
      'resourceGroupName': resourceGroupName,
      'storageLocationType': ?storageLocationType,
      'storageLocationUri': ?storageLocationUri,
    };
  }

  factory FleetAnalyticArgs.fromMap(Map<String, dynamic> map) {
    return FleetAnalyticArgs(
      fleetAnalyticsName: map['fleetAnalyticsName'] == null ? null : (map['fleetAnalyticsName'] as String).input(),
      fleetName: (map['fleetName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageLocationType: map['storageLocationType'] == null ? null : (map['storageLocationType'] as String).input(),
      storageLocationUri: map['storageLocationUri'] == null ? null : (map['storageLocationUri'] as String).input(),
    );
  }
}

