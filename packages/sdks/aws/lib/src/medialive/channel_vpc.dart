// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelVpc {
  final pulumi.Input<List<String>>? availabilityZones;
  final pulumi.Input<List<String>>? networkInterfaceIds;
  /// List of public address allocation ids to associate with ENIs that will be created in Output VPC. Must specify one for SINGLE_PIPELINE, two for STANDARD channels.
  final pulumi.Input<List<String>> publicAddressAllocationIds;
  /// A list of up to 5 EC2 VPC security group IDs to attach to the Output VPC network interfaces. If none are specified then the VPC default security group will be used.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// A list of VPC subnet IDs from the same VPC. If STANDARD channel, subnet IDs must be mapped to two unique availability zones (AZ).
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [ChannelVpc].
  /// [availabilityZones] Optional.
  /// [networkInterfaceIds] Optional.
  /// [publicAddressAllocationIds] List of public address allocation ids to associate with ENIs that will be created in Output VPC. Must specify one for SINGLE_PIPELINE, two for STANDARD channels.
  /// [securityGroupIds] A list of up to 5 EC2 VPC security group IDs to attach to the Output VPC network interfaces. If none are specified then the VPC default security group will be used.
  /// [subnetIds] A list of VPC subnet IDs from the same VPC. If STANDARD channel, subnet IDs must be mapped to two unique availability zones (AZ).
  const ChannelVpc({
    this.availabilityZones,
    this.networkInterfaceIds,
    required this.publicAddressAllocationIds,
    this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'networkInterfaceIds': ?networkInterfaceIds,
      'publicAddressAllocationIds': publicAddressAllocationIds,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': subnetIds,
    };
  }

  factory ChannelVpc.fromMap(Map<String, dynamic> map) {
    return ChannelVpc(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkInterfaceIds: (() { final guardedValue = map['networkInterfaceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publicAddressAllocationIds: pulumi.Input.fromValue((map['publicAddressAllocationIds'] as List).cast<String>()),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
    );
  }
}
