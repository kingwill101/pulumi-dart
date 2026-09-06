// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_fleet_analytic_args_doc}
/// The set of arguments for FleetAnalytic.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_fleet_analytic_args_doc}
class FleetAnalyticArgs {
  /// Cosmos DB fleetAnalytics name.
  final pulumi.Input<String?>? fleetAnalyticsName;
  /// Cosmos DB fleet name. Needs to be unique under a subscription.
  final pulumi.Input<String> fleetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The type of the fleet analytics resource.
  final pulumi.Input<dynamic>? storageLocationType;
  /// The unique identifier of the fleet analytics resource.
  final pulumi.Input<String?>? storageLocationUri;

  /// Creates a new [FleetAnalyticArgs].
  /// [fleetAnalyticsName] Cosmos DB fleetAnalytics name.
  /// [fleetName] Cosmos DB fleet name. Needs to be unique under a subscription.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageLocationType] The type of the fleet analytics resource.
  /// [storageLocationUri] The unique identifier of the fleet analytics resource.
  const FleetAnalyticArgs({
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
      fleetAnalyticsName: (() { final guardedValue = map['fleetAnalyticsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fleetName: pulumi.Input.fromValue(map['fleetName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageLocationType: (() { final guardedValue = map['storageLocationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      storageLocationUri: (() { final guardedValue = map['storageLocationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
