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
    pulumi.Output<String>? fleetName,
    pulumi.Output<FleetHubProfile>? hubProfile,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      fleetName = pulumi.Input.asOptionalInput<String>(fleetName),
      hubProfile = pulumi.Input.asOptionalInput<FleetHubProfile>(hubProfile),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      fleetName: map['fleetName'] == null ? null : pulumi.Output.create<String>(map['fleetName'] as String),
      hubProfile: map['hubProfile'] == null ? null : pulumi.Output.create<FleetHubProfile>(FleetHubProfile.fromMap((map['hubProfile'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

