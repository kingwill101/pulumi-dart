// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_workload_network_port_mirroring_args_doc}
/// The set of arguments for WorkloadNetworkPortMirroring.
/// {@endtemplate}
/// {@macro pulumi_avs_workload_network_port_mirroring_args_doc}
class WorkloadNetworkPortMirroringArgs {
  /// Destination VM Group.
  final pulumi.Input<String>? destination;
  /// Direction of port mirroring profile.
  final pulumi.Input<String>? direction;
  /// Display name of the port mirroring profile.
  final pulumi.Input<String>? displayName;
  /// ID of the NSX port mirroring profile.
  final pulumi.Input<String>? portMirroringId;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// NSX revision number.
  final pulumi.Input<double>? revision;
  /// Source VM Group.
  final pulumi.Input<String>? source;

  /// Creates a new [WorkloadNetworkPortMirroringArgs].
  /// [destination] Destination VM Group.
  /// [direction] Direction of port mirroring profile.
  /// [displayName] Display name of the port mirroring profile.
  /// [portMirroringId] ID of the NSX port mirroring profile.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [revision] NSX revision number.
  /// [source] Source VM Group.
  WorkloadNetworkPortMirroringArgs({
    this.destination,
    this.direction,
    this.displayName,
    this.portMirroringId,
    required this.privateCloudName,
    required this.resourceGroupName,
    this.revision,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'direction': ?direction,
      'displayName': ?displayName,
      'portMirroringId': ?portMirroringId,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'revision': ?revision,
      'source': ?source,
    };
  }

  factory WorkloadNetworkPortMirroringArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkPortMirroringArgs(
      destination: map['destination'] == null ? null : (map['destination']! as String).input(),
      direction: map['direction'] == null ? null : (map['direction']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      portMirroringId: map['portMirroringId'] == null ? null : (map['portMirroringId']! as String).input(),
      privateCloudName: (map['privateCloudName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      revision: map['revision'] == null ? null : (map['revision']! as double).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
    );
  }
}

