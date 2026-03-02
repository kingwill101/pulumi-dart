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
  ChannelVpc({
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
      availabilityZones: map['availabilityZones'] == null ? null : (((map['availabilityZones'] as List).cast<String>()).input()).input(),
      networkInterfaceIds: map['networkInterfaceIds'] == null ? null : (((map['networkInterfaceIds'] as List).cast<String>()).input()).input(),
      publicAddressAllocationIds: ((map['publicAddressAllocationIds'] as List).cast<String>()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
    );
  }
}

