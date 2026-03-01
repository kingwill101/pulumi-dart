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
    String? fleetAnalyticsName,
    required String fleetName,
    required String resourceGroupName,
    String? storageLocationType,
    String? storageLocationUri,
  }) :
      fleetAnalyticsName = pulumi.Input.asOptionalInput<String>(fleetAnalyticsName),
      fleetName = pulumi.Input.asInput<String>(fleetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageLocationType = pulumi.Input.asOptionalInput<String>(storageLocationType),
      storageLocationUri = pulumi.Input.asOptionalInput<String>(storageLocationUri);

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
      fleetAnalyticsName: map['fleetAnalyticsName'] == null ? null : map['fleetAnalyticsName'] as String,
      fleetName: map['fleetName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageLocationType: map['storageLocationType'] == null ? null : map['storageLocationType'] as String,
      storageLocationUri: map['storageLocationUri'] == null ? null : map['storageLocationUri'] as String,
    );
  }
}

