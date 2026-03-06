// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHavipsHavip {
  /// EIP bound to HaVip.
  final pulumi.Input<List<String>> associatedEipAddresses;
  /// An ECS instance that is bound to HaVip.
  final pulumi.Input<List<String>> associatedInstances;
  /// Dependence of a HaVip instance.
  final pulumi.Input<String> description;
  /// The  ID of the resource.
  final pulumi.Input<String> havipId;
  /// The name of the HaVip instance.
  final pulumi.Input<String> havipName;
  /// The ID of the Ha Vip.
  final pulumi.Input<String> id;
  /// IP address of private network.
  final pulumi.Input<String> ipAddress;
  /// The primary instance ID bound to HaVip.
  final pulumi.Input<String> masterInstanceId;
  /// The status.
  final pulumi.Input<String> status;
  /// The VPC ID to which the HaVip instance belongs.
  final pulumi.Input<String> vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetHavipsHavip].
  /// [associatedEipAddresses] EIP bound to HaVip.
  /// [associatedInstances] An ECS instance that is bound to HaVip.
  /// [description] Dependence of a HaVip instance.
  /// [havipId] The  ID of the resource.
  /// [havipName] The name of the HaVip instance.
  /// [id] The ID of the Ha Vip.
  /// [ipAddress] IP address of private network.
  /// [masterInstanceId] The primary instance ID bound to HaVip.
  /// [status] The status.
  /// [vpcId] The VPC ID to which the HaVip instance belongs.
  /// [vswitchId] The vswitch id.
  const GetHavipsHavip({
    required this.associatedEipAddresses,
    required this.associatedInstances,
    required this.description,
    required this.havipId,
    required this.havipName,
    required this.id,
    required this.ipAddress,
    required this.masterInstanceId,
    required this.status,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedEipAddresses': associatedEipAddresses,
      'associatedInstances': associatedInstances,
      'description': description,
      'havipId': havipId,
      'havipName': havipName,
      'id': id,
      'ipAddress': ipAddress,
      'masterInstanceId': masterInstanceId,
      'status': status,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetHavipsHavip.fromMap(Map<String, dynamic> map) {
    return GetHavipsHavip(
      associatedEipAddresses: pulumi.Input.fromValue((map['associatedEipAddresses'] as List).cast<String>()),
      associatedInstances: pulumi.Input.fromValue((map['associatedInstances'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      havipId: pulumi.Input.fromValue(map['havipId'] as String),
      havipName: pulumi.Input.fromValue(map['havipName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      masterInstanceId: pulumi.Input.fromValue(map['masterInstanceId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

