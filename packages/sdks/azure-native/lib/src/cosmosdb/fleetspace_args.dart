// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleetspace_properties_throughput_pool_configuration.dart';

/// {@template pulumi_cosmosdb_fleetspace_args_doc}
/// The set of arguments for Fleetspace.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_fleetspace_args_doc}
class FleetspaceArgs {
  /// List of data regions assigned to the fleetspace. Eg [westus2]
  final pulumi.Input<List<String>>? dataRegions;

  /// Cosmos DB fleet name. Needs to be unique under a subscription.
  final pulumi.Input<String> fleetName;

  /// The kind of API this fleetspace belongs to. Acceptable values: 'NoSQL'
  final pulumi.Input<String>? fleetspaceApiKind;

  /// Cosmos DB fleetspace name. Needs to be unique under a fleet.
  final pulumi.Input<String>? fleetspaceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Service Tier for the fleetspace. GeneralPurpose types refers to single write region accounts that can be added to this fleetspace, whereas BusinessCritical refers to multi write region.
  final pulumi.Input<String>? serviceTier;

  /// Configuration for throughput pool in the fleetspace.
  final pulumi.Input<FleetspacePropertiesThroughputPoolConfiguration>?
  throughputPoolConfiguration;

  /// Creates a new [FleetspaceArgs].
  /// [dataRegions] List of data regions assigned to the fleetspace. Eg [westus2]
  /// [fleetName] Cosmos DB fleet name. Needs to be unique under a subscription.
  /// [fleetspaceApiKind] The kind of API this fleetspace belongs to. Acceptable values: 'NoSQL'
  /// [fleetspaceName] Cosmos DB fleetspace name. Needs to be unique under a fleet.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceTier] Service Tier for the fleetspace. GeneralPurpose types refers to single write region accounts that can be added to this fleetspace, whereas BusinessCritical refers to multi write region.
  /// [throughputPoolConfiguration] Configuration for throughput pool in the fleetspace.
  FleetspaceArgs({
    this.dataRegions,
    required this.fleetName,
    this.fleetspaceApiKind,
    this.fleetspaceName,
    required this.resourceGroupName,
    this.serviceTier,
    this.throughputPoolConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataRegions': ?dataRegions,
      'fleetName': fleetName,
      'fleetspaceApiKind': ?fleetspaceApiKind,
      'fleetspaceName': ?fleetspaceName,
      'resourceGroupName': resourceGroupName,
      'serviceTier': ?serviceTier,
      'throughputPoolConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            FleetspacePropertiesThroughputPoolConfiguration,
            Map<String, dynamic>
          >(throughputPoolConfiguration, (value) => value.toMap()),
    };
  }

  factory FleetspaceArgs.fromMap(Map<String, dynamic> map) {
    return FleetspaceArgs(
      dataRegions: (() {
        final guardedValue = map['dataRegions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      fleetName: pulumi.Input.fromValue(map['fleetName'] as String),
      fleetspaceApiKind: (() {
        final guardedValue = map['fleetspaceApiKind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fleetspaceName: (() {
        final guardedValue = map['fleetspaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceTier: (() {
        final guardedValue = map['serviceTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      throughputPoolConfiguration: (() {
        final guardedValue = map['throughputPoolConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FleetspacePropertiesThroughputPoolConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
