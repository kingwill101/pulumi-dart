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
    String? destination,
    String? direction,
    String? displayName,
    String? portMirroringId,
    required String privateCloudName,
    required String resourceGroupName,
    double? revision,
    String? source,
  }) :
      destination = pulumi.Input.asOptionalInput<String>(destination),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      portMirroringId = pulumi.Input.asOptionalInput<String>(portMirroringId),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      revision = pulumi.Input.asOptionalInput<double>(revision),
      source = pulumi.Input.asOptionalInput<String>(source);

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
      destination: map['destination'] == null ? null : map['destination'] as String,
      direction: map['direction'] == null ? null : map['direction'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      portMirroringId: map['portMirroringId'] == null ? null : map['portMirroringId'] as String,
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      revision: map['revision'] == null ? null : map['revision'] as double,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

