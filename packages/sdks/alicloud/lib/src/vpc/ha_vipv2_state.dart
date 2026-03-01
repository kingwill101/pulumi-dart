// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HaVipv2 resources.
class HaVipv2State {
  /// EIP bound to HaVip
  final pulumi.Input<List<String>>? associatedEipAddresses;
  /// The type of the instance that is bound to the HaVip. Value:
  /// - `EcsInstance`: ECS instance.
  /// - `NetworkInterface`: ENI instance.
  final pulumi.Input<String>? associatedInstanceType;
  /// The ID of the ECS instance to be associated with the HAVIP.
  final pulumi.Input<List<String>>? associatedInstances;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The description of the HAVIP. The description must be 1 to 255 characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The ID of the HaVip instance.
  final pulumi.Input<String>? haVipId;
  /// The name of the HAVIP. The name must be 1 to 128 characters in length, and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? haVipName;
  /// . Field 'havip_name' has been deprecated from provider version 1.259.0. New field 'ha_vip_name' instead.
  final pulumi.Input<String>? havipName;
  /// The IP address of the HAVIP. The specified IP address must be an idle IP address that falls within the CIDR block of the vSwitch. If this parameter is not set, an idle IP address from the CIDR block of the vSwitch is randomly assigned to the HAVIP.
  final pulumi.Input<String>? ipAddress;
  /// The primary instance ID bound to HaVip
  final pulumi.Input<String>? masterInstanceId;
  /// The ID of the resource group to which the HAVIP belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of this resource instance.
  final pulumi.Input<String>? status;
  /// The tags of HaVip.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC ID to which the HaVip instance belongs
  final pulumi.Input<String>? vpcId;
  /// The switch ID to which the HaVip instance belongs
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [HaVipv2State].
  /// [associatedEipAddresses] EIP bound to HaVip
  /// [associatedInstanceType] The type of the instance that is bound to the HaVip. Value:
  /// [associatedInstances] The ID of the ECS instance to be associated with the HAVIP.
  /// [createTime] The creation time of the resource
  /// [description] The description of the HAVIP. The description must be 1 to 255 characters in length and cannot start with `http://` or `https://`.
  /// [haVipId] The ID of the HaVip instance.
  /// [haVipName] The name of the HAVIP. The name must be 1 to 128 characters in length, and cannot start with `http://` or `https://`.
  /// [havipName] . Field 'havip_name' has been deprecated from provider version 1.259.0. New field 'ha_vip_name' instead.
  /// [ipAddress] The IP address of the HAVIP. The specified IP address must be an idle IP address that falls within the CIDR block of the vSwitch. If this parameter is not set, an idle IP address from the CIDR block of the vSwitch is randomly assigned to the HAVIP.
  /// [masterInstanceId] The primary instance ID bound to HaVip
  /// [resourceGroupId] The ID of the resource group to which the HAVIP belongs.
  /// [status] The status of this resource instance.
  /// [tags] The tags of HaVip.
  /// [vpcId] The VPC ID to which the HaVip instance belongs
  /// [vswitchId] The switch ID to which the HaVip instance belongs
  HaVipv2State({
    pulumi.Output<List<String>>? associatedEipAddresses,
    pulumi.Output<String>? associatedInstanceType,
    pulumi.Output<List<String>>? associatedInstances,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? haVipId,
    pulumi.Output<String>? haVipName,
    pulumi.Output<String>? havipName,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? masterInstanceId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      associatedEipAddresses = pulumi.Input.asOptionalInput<List<String>>(associatedEipAddresses),
      associatedInstanceType = pulumi.Input.asOptionalInput<String>(associatedInstanceType),
      associatedInstances = pulumi.Input.asOptionalInput<List<String>>(associatedInstances),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      haVipId = pulumi.Input.asOptionalInput<String>(haVipId),
      haVipName = pulumi.Input.asOptionalInput<String>(haVipName),
      havipName = pulumi.Input.asOptionalInput<String>(havipName),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      masterInstanceId = pulumi.Input.asOptionalInput<String>(masterInstanceId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedEipAddresses': ?associatedEipAddresses,
      'associatedInstanceType': ?associatedInstanceType,
      'associatedInstances': ?associatedInstances,
      'createTime': ?createTime,
      'description': ?description,
      'haVipId': ?haVipId,
      'haVipName': ?haVipName,
      'havipName': ?havipName,
      'ipAddress': ?ipAddress,
      'masterInstanceId': ?masterInstanceId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory HaVipv2State.fromMap(Map<String, dynamic> map) {
    return HaVipv2State(
      associatedEipAddresses: map['associatedEipAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['associatedEipAddresses'] as List).cast<String>()),
      associatedInstanceType: map['associatedInstanceType'] == null ? null : pulumi.Output.create<String>(map['associatedInstanceType'] as String),
      associatedInstances: map['associatedInstances'] == null ? null : pulumi.Output.create<List<String>>((map['associatedInstances'] as List).cast<String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      haVipId: map['haVipId'] == null ? null : pulumi.Output.create<String>(map['haVipId'] as String),
      haVipName: map['haVipName'] == null ? null : pulumi.Output.create<String>(map['haVipName'] as String),
      havipName: map['havipName'] == null ? null : pulumi.Output.create<String>(map['havipName'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      masterInstanceId: map['masterInstanceId'] == null ? null : pulumi.Output.create<String>(map['masterInstanceId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

