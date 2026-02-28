// ignore_for_file: unused_element, unnecessary_cast

class ChannelVpc {
  final List<String>? availabilityZones;
  final List<String>? networkInterfaceIds;

  /// List of public address allocation ids to associate with ENIs that will be created in Output VPC. Must specify one for SINGLE_PIPELINE, two for STANDARD channels.
  final List<String> publicAddressAllocationIds;

  /// A list of up to 5 EC2 VPC security group IDs to attach to the Output VPC network interfaces. If none are specified then the VPC default security group will be used.
  final List<String>? securityGroupIds;

  /// A list of VPC subnet IDs from the same VPC. If STANDARD channel, subnet IDs must be mapped to two unique availability zones (AZ).
  final List<String> subnetIds;

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
    final map = <String, dynamic>{};
    final availabilityZonesValue = availabilityZones;
    if (availabilityZonesValue != null) {
      map['availabilityZones'] = availabilityZonesValue;
    }
    final networkInterfaceIdsValue = networkInterfaceIds;
    if (networkInterfaceIdsValue != null) {
      map['networkInterfaceIds'] = networkInterfaceIdsValue;
    }
    map['publicAddressAllocationIds'] = publicAddressAllocationIds;
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    map['subnetIds'] = subnetIds;
    return map;
  }

  factory ChannelVpc.fromMap(Map<String, dynamic> map) {
    return ChannelVpc(
      availabilityZones: map['availabilityZones'] == null
          ? null
          : (map['availabilityZones'] as List).cast<String>(),
      networkInterfaceIds: map['networkInterfaceIds'] == null
          ? null
          : (map['networkInterfaceIds'] as List).cast<String>(),
      publicAddressAllocationIds:
          (map['publicAddressAllocationIds'] as List).cast<String>(),
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
    );
  }
}
