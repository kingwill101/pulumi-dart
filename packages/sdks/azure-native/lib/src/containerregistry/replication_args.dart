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
    pulumi.Output<String>? location,
    pulumi.Output<bool>? regionEndpointEnabled,
    required pulumi.Output<String> registryName,
    pulumi.Output<String>? replicationName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zoneRedundancy,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      regionEndpointEnabled = pulumi.Input.asOptionalInput<bool>(regionEndpointEnabled),
      registryName = pulumi.Input.asInput<String>(registryName),
      replicationName = pulumi.Input.asOptionalInput<String>(replicationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneRedundancy = pulumi.Input.asOptionalInput<String>(zoneRedundancy);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      regionEndpointEnabled: map['regionEndpointEnabled'] == null ? null : pulumi.Output.create<bool>(map['regionEndpointEnabled'] as bool),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      replicationName: map['replicationName'] == null ? null : pulumi.Output.create<String>(map['replicationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneRedundancy: map['zoneRedundancy'] == null ? null : pulumi.Output.create<String>(map['zoneRedundancy'] as String),
    );
  }
}

