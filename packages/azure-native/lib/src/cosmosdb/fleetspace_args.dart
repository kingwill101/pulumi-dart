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
  final pulumi.Input<FleetspacePropertiesThroughputPoolConfiguration>? throughputPoolConfiguration;

  /// Creates a new [FleetspaceArgs].
  /// [dataRegions] List of data regions assigned to the fleetspace. Eg [westus2]
  /// [fleetName] Cosmos DB fleet name. Needs to be unique under a subscription.
  /// [fleetspaceApiKind] The kind of API this fleetspace belongs to. Acceptable values: 'NoSQL'
  /// [fleetspaceName] Cosmos DB fleetspace name. Needs to be unique under a fleet.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceTier] Service Tier for the fleetspace. GeneralPurpose types refers to single write region accounts that can be added to this fleetspace, whereas BusinessCritical refers to multi write region.
  /// [throughputPoolConfiguration] Configuration for throughput pool in the fleetspace.
  FleetspaceArgs({
    List<String>? dataRegions,
    required String fleetName,
    String? fleetspaceApiKind,
    String? fleetspaceName,
    required String resourceGroupName,
    String? serviceTier,
    FleetspacePropertiesThroughputPoolConfiguration? throughputPoolConfiguration,
  }) :
      dataRegions = pulumi.Input.asOptionalInput<List<String>>(dataRegions),
      fleetName = pulumi.Input.asInput<String>(fleetName),
      fleetspaceApiKind = pulumi.Input.asOptionalInput<String>(fleetspaceApiKind),
      fleetspaceName = pulumi.Input.asOptionalInput<String>(fleetspaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceTier = pulumi.Input.asOptionalInput<String>(serviceTier),
      throughputPoolConfiguration = pulumi.Input.asOptionalInput<FleetspacePropertiesThroughputPoolConfiguration>(throughputPoolConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataRegions': ?dataRegions,
      'fleetName': fleetName,
      'fleetspaceApiKind': ?fleetspaceApiKind,
      'fleetspaceName': ?fleetspaceName,
      'resourceGroupName': resourceGroupName,
      'serviceTier': ?serviceTier,
      'throughputPoolConfiguration': ?pulumi.Input.mapOptionalInputValue<FleetspacePropertiesThroughputPoolConfiguration, Map<String, dynamic>>(throughputPoolConfiguration, (value) => value.toMap()),
    };
  }

  factory FleetspaceArgs.fromMap(Map<String, dynamic> map) {
    return FleetspaceArgs(
      dataRegions: map['dataRegions'] == null ? null : (map['dataRegions'] as List).cast<String>(),
      fleetName: map['fleetName'] as String,
      fleetspaceApiKind: map['fleetspaceApiKind'] == null ? null : map['fleetspaceApiKind'] as String,
      fleetspaceName: map['fleetspaceName'] == null ? null : map['fleetspaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceTier: map['serviceTier'] == null ? null : map['serviceTier'] as String,
      throughputPoolConfiguration: map['throughputPoolConfiguration'] == null ? null : FleetspacePropertiesThroughputPoolConfiguration.fromMap((map['throughputPoolConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

