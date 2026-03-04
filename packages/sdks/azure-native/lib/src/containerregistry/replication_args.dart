// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_replication_args_doc}
/// The set of arguments for Replication.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_replication_args_doc}
class ReplicationArgs {
  /// The location of the resource. This cannot be changed after the resource is created.
  final pulumi.Input<String>? location;

  /// Specifies whether the replication's regional endpoint is enabled. Requests will not be routed to a replication whose regional endpoint is disabled, however its data will continue to be synced with other replications.
  final pulumi.Input<bool>? regionEndpointEnabled;

  /// The name of the container registry.
  final pulumi.Input<String> registryName;

  /// The name of the replication.
  final pulumi.Input<String>? replicationName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Whether or not zone redundancy is enabled for this container registry replication
  final pulumi.Input<String>? zoneRedundancy;

  /// Creates a new [ReplicationArgs].
  /// [location] The location of the resource. This cannot be changed after the resource is created.
  /// [regionEndpointEnabled] Specifies whether the replication's regional endpoint is enabled. Requests will not be routed to a replication whose regional endpoint is disabled, however its data will continue to be synced with other replications.
  /// [registryName] The name of the container registry.
  /// [replicationName] The name of the replication.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The tags of the resource.
  /// [zoneRedundancy] Whether or not zone redundancy is enabled for this container registry replication
  ReplicationArgs({
    this.location,
    this.regionEndpointEnabled,
    required this.registryName,
    this.replicationName,
    required this.resourceGroupName,
    this.tags,
    this.zoneRedundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'regionEndpointEnabled': ?regionEndpointEnabled,
      'registryName': registryName,
      'replicationName': ?replicationName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'zoneRedundancy': ?zoneRedundancy,
    };
  }

  factory ReplicationArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionEndpointEnabled: (() {
        final guardedValue = map['regionEndpointEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      replicationName: (() {
        final guardedValue = map['replicationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      zoneRedundancy: (() {
        final guardedValue = map['zoneRedundancy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
