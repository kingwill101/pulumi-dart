// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_workload_network_port_mirroring_args_doc}
/// Arguments for getWorkloadNetworkPortMirroring.
/// {@endtemplate}
/// {@macro pulumi_avs_get_workload_network_port_mirroring_args_doc}
class GetWorkloadNetworkPortMirroringArgs {
  /// ID of the NSX port mirroring profile.
  final pulumi.Input<String> portMirroringId;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWorkloadNetworkPortMirroringArgs].
  /// [portMirroringId] ID of the NSX port mirroring profile.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetWorkloadNetworkPortMirroringArgs({
    required pulumi.Output<String> portMirroringId,
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      portMirroringId = pulumi.Input.asInput<String>(portMirroringId),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portMirroringId': portMirroringId,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWorkloadNetworkPortMirroringArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkPortMirroringArgs(
      portMirroringId: pulumi.Output.create<String>(map['portMirroringId'] as String),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

