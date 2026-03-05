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
      address: pulumi.Input.fromValue(map['address'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      internet: pulumi.Input.fromValue(map['internet'] as bool),
      masterAvailabilityZone: pulumi.Input.fromValue(map['masterAvailabilityZone'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      slaveAvailabilityZone: pulumi.Input.fromValue(map['slaveAvailabilityZone'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

