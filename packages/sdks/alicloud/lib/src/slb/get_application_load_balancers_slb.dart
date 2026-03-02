// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationLoadBalancersSlb {
  /// Service address of the SLBs.
  final pulumi.Input<String> address;
  final pulumi.Input<String> creationTime;
  /// ID of the SLB.
  final pulumi.Input<String> id;
  final pulumi.Input<bool> internet;
  final pulumi.Input<String> masterAvailabilityZone;
  final pulumi.Input<String> name;
  /// Network type of the SLBs. Valid values: `vpc` and `classic`.
  final pulumi.Input<String> networkType;
  final pulumi.Input<String> regionId;
  final pulumi.Input<String> slaveAvailabilityZone;
  /// SLB current status. Possible values: `inactive`, `active` and `locked`.
  final pulumi.Input<String> status;
  /// A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  final pulumi.Input<Map<String, String>> tags;
  /// ID of the VPC linked to the SLBs.
  final pulumi.Input<String> vpcId;
  /// ID of the vSwitch linked to the SLBs.
  final pulumi.Input<String> vswitchId;

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
      address: (map['address'] as String).input(),
      creationTime: (map['creationTime'] as String).input(),
      id: (map['id'] as String).input(),
      internet: (map['internet'] as bool).input(),
      masterAvailabilityZone: (map['masterAvailabilityZone'] as String).input(),
      name: (map['name'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      slaveAvailabilityZone: (map['slaveAvailabilityZone'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

