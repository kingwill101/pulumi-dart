// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'vmss_fabric_profile.dart';

/// {@template pulumi_devopsinfrastructure_pool_args_doc}
/// The set of arguments for Pool.
/// {@endtemplate}
/// {@macro pulumi_devopsinfrastructure_pool_args_doc}
class PoolArgs {
  /// Defines how the machine will be handled once it executed a job.
  final pulumi.Input<dynamic> agentProfile;
  /// The resource id of the DevCenter Project the pool belongs to.
  final pulumi.Input<String> devCenterProjectResourceId;
  /// Defines the type of fabric the agent will run on.
  final pulumi.Input<VmssFabricProfile> fabricProfile;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Defines how many resources can there be created at any given time.
  final pulumi.Input<int> maximumConcurrency;
  /// Defines the organization in which the pool will be used.
  final pulumi.Input<dynamic> organizationProfile;
  /// Name of the pool. It needs to be globally unique.
  final pulumi.Input<String?>? poolName;
  /// The status of the current operation.
  final pulumi.Input<dynamic>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [PoolArgs].
  /// [agentProfile] Defines how the machine will be handled once it executed a job.
  /// [devCenterProjectResourceId] The resource id of the DevCenter Project the pool belongs to.
  /// [fabricProfile] Defines the type of fabric the agent will run on.
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [maximumConcurrency] Defines how many resources can there be created at any given time.
  /// [organizationProfile] Defines the organization in which the pool will be used.
  /// [poolName] Name of the pool. It needs to be globally unique.
  /// [provisioningState] The status of the current operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const PoolArgs({
    required this.agentProfile,
    required this.devCenterProjectResourceId,
    required this.fabricProfile,
    this.identity,
    this.location,
    required this.maximumConcurrency,
    required this.organizationProfile,
    this.poolName,
    this.provisioningState,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProfile': agentProfile,
      'devCenterProjectResourceId': devCenterProjectResourceId,
      'fabricProfile': pulumi.Input.mapInputValue<VmssFabricProfile, Map<String, dynamic>>(fabricProfile, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maximumConcurrency': maximumConcurrency,
      'organizationProfile': organizationProfile,
      'poolName': ?poolName,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PoolArgs.fromMap(Map<String, dynamic> map) {
    return PoolArgs(
      agentProfile: pulumi.Input.fromValue(map['agentProfile']),
      devCenterProjectResourceId: pulumi.Input.fromValue(map['devCenterProjectResourceId'] as String),
      fabricProfile: pulumi.Input.fromValue(VmssFabricProfile.fromMap((map['fabricProfile']! as Map).cast<String, dynamic>())),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maximumConcurrency: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maximumConcurrency'])),
      organizationProfile: pulumi.Input.fromValue(map['organizationProfile']),
      poolName: (() { final guardedValue = map['poolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
