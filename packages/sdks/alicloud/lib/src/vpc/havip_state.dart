// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HAVip resources.
class HAVipState {
  /// The elastic IP address (EIP) associated with the HAVIP.
  final pulumi.Input<List<String>>? associatedEipAddresses;
  /// The type of the instance with which the HAVIP is associated. Valid values:
  /// - `EcsInstance`: an ECS instance.
  /// - `NetworkInterface`: an ENI.
  final pulumi.Input<String>? associatedInstanceType;
  /// The ID of the instance with which the HAVIP is associated.
  final pulumi.Input<List<String>>? associatedInstances;
  /// The time when the HAVIP was created.
  final pulumi.Input<String>? createTime;
  /// The description of the HaVip instance.
  final pulumi.Input<String>? description;
  /// The ID of the HAVIP.
  final pulumi.Input<String>? haVipId;
  /// The name of the HAVIP.
  final pulumi.Input<String>? haVipName;
  /// The name of the HaVip instance.
  final pulumi.Input<String>? havipName;
  /// The ip address of the HaVip. If not filled, the default will be assigned one from the vswitch.
  final pulumi.Input<String>? ipAddress;
  /// The ID of the active instance that is associated with the HAVIP.
  final pulumi.Input<String>? masterInstanceId;
  /// The ID of the resource group to which the HAVIP belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// (Available since v1.120.0) The status of the HaVip instance.
  final pulumi.Input<String>? status;
  /// The list of tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC to which the HAVIP belongs.
  final pulumi.Input<String>? vpcId;
  /// The vswitch_id of the HaVip, the field can't be changed.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [HAVipState].
  /// [associatedEipAddresses] The elastic IP address (EIP) associated with the HAVIP.
  /// [associatedInstanceType] The type of the instance with which the HAVIP is associated. Valid values:
  /// [associatedInstances] The ID of the instance with which the HAVIP is associated.
  /// [createTime] The time when the HAVIP was created.
  /// [description] The description of the HaVip instance.
  /// [haVipId] The ID of the HAVIP.
  /// [haVipName] The name of the HAVIP.
  /// [havipName] The name of the HaVip instance.
  /// [ipAddress] The ip address of the HaVip. If not filled, the default will be assigned one from the vswitch.
  /// [masterInstanceId] The ID of the active instance that is associated with the HAVIP.
  /// [resourceGroupId] The ID of the resource group to which the HAVIP belongs.
  /// [status] (Available since v1.120.0) The status of the HaVip instance.
  /// [tags] The list of tags.
  /// [vpcId] The ID of the VPC to which the HAVIP belongs.
  /// [vswitchId] The vswitch_id of the HaVip, the field can't be changed.
  HAVipState({
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

  factory HAVipState.fromMap(Map<String, dynamic> map) {
    return HAVipState(
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

