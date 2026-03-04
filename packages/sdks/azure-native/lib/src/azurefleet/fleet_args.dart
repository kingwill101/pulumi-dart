// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_locations_profile.dart';
import 'compute_profile.dart';
import 'managed_service_identity.dart';
import 'plan.dart';
import 'regular_priority_profile.dart';
import 'spot_priority_profile.dart';
import 'vm_size_profile.dart';
import 'vmattributes.dart';

/// {@template pulumi_azurefleet_fleet_args_doc}
/// The set of arguments for Fleet.
/// {@endtemplate}
/// {@macro pulumi_azurefleet_fleet_args_doc}
class FleetArgs {
  /// Represents the configuration for additional locations where Fleet resources may be deployed.
  final pulumi.Input<AdditionalLocationsProfile>? additionalLocationsProfile;

  /// Compute Profile to use for running user's workloads.
  final pulumi.Input<ComputeProfile> computeProfile;

  /// The name of the Compute Fleet
  final pulumi.Input<String>? fleetName;

  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Details of the resource plan.
  final pulumi.Input<Plan>? plan;

  /// Configuration Options for Regular instances in Compute Fleet.
  final pulumi.Input<RegularPriorityProfile>? regularPriorityProfile;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Configuration Options for Spot instances in Compute Fleet.
  final pulumi.Input<SpotPriorityProfile>? spotPriorityProfile;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Attribute based Fleet.
  final pulumi.Input<VMAttributes>? vmAttributes;

  /// List of VM sizes supported for Compute Fleet
  final pulumi.Input<List<VmSizeProfile>> vmSizesProfile;

  /// Zones in which the Compute Fleet is available
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [FleetArgs].
  /// [additionalLocationsProfile] Represents the configuration for additional locations where Fleet resources may be deployed.
  /// [computeProfile] Compute Profile to use for running user's workloads.
  /// [fleetName] The name of the Compute Fleet
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [plan] Details of the resource plan.
  /// [regularPriorityProfile] Configuration Options for Regular instances in Compute Fleet.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spotPriorityProfile] Configuration Options for Spot instances in Compute Fleet.
  /// [tags] Resource tags.
  /// [vmAttributes] Attribute based Fleet.
  /// [vmSizesProfile] List of VM sizes supported for Compute Fleet
  /// [zones] Zones in which the Compute Fleet is available
  FleetArgs({
    this.additionalLocationsProfile,
    required this.computeProfile,
    this.fleetName,
    this.identity,
    this.location,
    this.plan,
    this.regularPriorityProfile,
    required this.resourceGroupName,
    this.spotPriorityProfile,
    this.tags,
    this.vmAttributes,
    required this.vmSizesProfile,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLocationsProfile':
          ?pulumi.Input.mapOptionalInputValue<
            AdditionalLocationsProfile,
            Map<String, dynamic>
          >(additionalLocationsProfile, (value) => value.toMap()),
      'computeProfile':
          pulumi.Input.mapInputValue<ComputeProfile, Map<String, dynamic>>(
            computeProfile,
            (value) => value.toMap(),
          ),
      'fleetName': ?fleetName,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(
        plan,
        (value) => value.toMap(),
      ),
      'regularPriorityProfile':
          ?pulumi.Input.mapOptionalInputValue<
            RegularPriorityProfile,
            Map<String, dynamic>
          >(regularPriorityProfile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'spotPriorityProfile':
          ?pulumi.Input.mapOptionalInputValue<
            SpotPriorityProfile,
            Map<String, dynamic>
          >(spotPriorityProfile, (value) => value.toMap()),
      'tags': ?tags,
      'vmAttributes':
          ?pulumi.Input.mapOptionalInputValue<
            VMAttributes,
            Map<String, dynamic>
          >(vmAttributes, (value) => value.toMap()),
      'vmSizesProfile':
          pulumi.Input.mapInputValue<
            List<VmSizeProfile>,
            List<Map<String, dynamic>>
          >(
            vmSizesProfile,
            (value) =>
                pulumi.Input.encodeList<VmSizeProfile, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'zones': ?zones,
    };
  }

  factory FleetArgs.fromMap(Map<String, dynamic> map) {
    return FleetArgs(
      additionalLocationsProfile: (() {
        final guardedValue = map['additionalLocationsProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AdditionalLocationsProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      computeProfile: pulumi.Input.fromValue(
        ComputeProfile.fromMap(
          (map['computeProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      fleetName: (() {
        final guardedValue = map['fleetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      plan: (() {
        final guardedValue = map['plan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Plan.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      regularPriorityProfile: (() {
        final guardedValue = map['regularPriorityProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegularPriorityProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      spotPriorityProfile: (() {
        final guardedValue = map['spotPriorityProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SpotPriorityProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vmAttributes: (() {
        final guardedValue = map['vmAttributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VMAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      vmSizesProfile: pulumi.Input.fromValue(
        pulumi.Input.decodeList<VmSizeProfile>(
          map['vmSizesProfile']!,
          (value) =>
              VmSizeProfile.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
