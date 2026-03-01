// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationLoadBalancersSlb {
  /// Service address of the SLBs.
  final String address;
  final String creationTime;
  /// ID of the SLB.
  final String id;
  final bool internet;
  final String masterAvailabilityZone;
  final String name;
  /// Network type of the SLBs. Valid values: `vpc` and `classic`.
  final String networkType;
  final String regionId;
  final String slaveAvailabilityZone;
  /// SLB current status. Possible values: `inactive`, `active` and `locked`.
  final String status;
  /// A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  final Map<String, String> tags;
  /// ID of the VPC linked to the SLBs.
  final String vpcId;
  /// ID of the vSwitch linked to the SLBs.
  final String vswitchId;

  /// Creates a new [GetApplicationLoadBalancersSlb].
  /// [address] Service address of the SLBs.
  /// [creationTime] Required.
  /// [id] ID of the SLB.
  /// [internet] Required.
  /// [masterAvailabilityZone] Required.
  /// [name] Required.
  /// [networkType] Network type of the SLBs. Valid values: `vpc` and `classic`.
  /// [regionId] Required.
  /// [slaveAvailabilityZone] Required.
  /// [status] SLB current status. Possible values: `inactive`, `active` and `locked`.
  /// [tags] A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  /// [vpcId] ID of the VPC linked to the SLBs.
  /// [vswitchId] ID of the vSwitch linked to the SLBs.
  GetApplicationLoadBalancersSlb({
    required this.address,
    required this.creationTime,
    required this.id,
    required this.internet,
    required this.masterAvailabilityZone,
    required this.name,
    required this.networkType,
    required this.regionId,
    required this.slaveAvailabilityZone,
    required this.status,
    required this.tags,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'creationTime': creationTime,
      'id': id,
      'internet': internet,
      'masterAvailabilityZone': masterAvailabilityZone,
      'name': name,
      'networkType': networkType,
      'regionId': regionId,
      'slaveAvailabilityZone': slaveAvailabilityZone,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetApplicationLoadBalancersSlb.fromMap(Map<String, dynamic> map) {
    return GetApplicationLoadBalancersSlb(
      address: map['address'] as String,
      creationTime: map['creationTime'] as String,
      id: map['id'] as String,
      internet: map['internet'] as bool,
      masterAvailabilityZone: map['masterAvailabilityZone'] as String,
      name: map['name'] as String,
      networkType: map['networkType'] as String,
      regionId: map['regionId'] as String,
      slaveAvailabilityZone: map['slaveAvailabilityZone'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

