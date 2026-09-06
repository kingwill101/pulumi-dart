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
  final pulumi.Input<String?>? fleetName;
  /// The FleetHubProfile configures the Fleet's hub.
  final pulumi.Input<FleetHubProfile?>? hubProfile;
  /// Managed identity.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FleetArgs].
  /// [fleetName] The name of the Fleet resource.
  /// [hubProfile] The FleetHubProfile configures the Fleet's hub.
  /// [identity] Managed identity.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const FleetArgs({
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
      fleetName: (() { final guardedValue = map['fleetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubProfile: (() { final guardedValue = map['hubProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetHubProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
