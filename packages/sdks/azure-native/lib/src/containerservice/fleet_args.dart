// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_hub_profile.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_containerservice_fleet_args_doc}
/// The set of arguments for Fleet.
/// {@endtemplate}
/// {@macro pulumi_containerservice_fleet_args_doc}
class FleetArgs {
  /// The name of the Fleet resource.
  final pulumi.Input<String>? fleetName;
  /// The FleetHubProfile configures the Fleet's hub.
  final pulumi.Input<FleetHubProfile>? hubProfile;
  /// Managed identity.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FleetArgs].
  /// [fleetName] The name of the Fleet resource.
  /// [hubProfile] The FleetHubProfile configures the Fleet's hub.
  /// [identity] Managed identity.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  FleetArgs({
    this.fleetName,
    this.hubProfile,
    this.identity,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': ?fleetName,
      'hubProfile': ?pulumi.Input.mapOptionalInputValue<FleetHubProfile, Map<String, dynamic>>(hubProfile, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory FleetArgs.fromMap(Map<String, dynamic> map) {
    return FleetArgs(
      fleetName: map['fleetName'] == null ? null : (map['fleetName'] as String).input(),
      hubProfile: map['hubProfile'] == null ? null : (FleetHubProfile.fromMap((map['hubProfile'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

