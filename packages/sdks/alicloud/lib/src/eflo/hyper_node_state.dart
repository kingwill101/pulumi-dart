// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_node_data_disk.dart';

/// Input properties used for looking up and filtering HyperNode resources.
class HyperNodeState {
  /// Cluster ID
  final pulumi.Input<String>? clusterId;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  final pulumi.Input<List<HyperNodeDataDisk>>? dataDisks;
  /// The host name prefix of the sub computing node
  final pulumi.Input<String>? hostname;
  /// Number of the cluster to which the hyper computing node belongs
  final pulumi.Input<String>? hpnZone;
  /// Login Password of the sub computing node
  final pulumi.Input<String>? loginPassword;
  /// The model used by the hyper computing node
  final pulumi.Input<String>? machineType;
  /// Node group ID
  final pulumi.Input<String>? nodeGroupId;
  /// The duration of the instance purchase, in units.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? paymentDuration;
  /// The payment type of the resource
  final pulumi.Input<String>? paymentType;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
  /// Number of auto-renewal cycles
  final pulumi.Input<int>? renewalDuration;
  /// Automatic renewal status. Value: AutoRenewal: automatic renewal. ManualRenewal: manual renewal. The default ManualRenewal.
  final pulumi.Input<String>? renewalStatus;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Hyper Node Architecture
  final pulumi.Input<String>? serverArch;
  /// The number of installments of the hyper computing node of the fixed fee installment.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? stageNum;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Custom user data for the sub computing node
  final pulumi.Input<String>? userData;
  /// The ID of the vpc to which the sub computing node
  final pulumi.Input<String>? vpcId;
  /// The ID of the vswitch to which the sub computing node
  final pulumi.Input<String>? vswitchId;
  /// The zone where the hyper compute node is located
  final pulumi.Input<String>? zoneId;

  /// Creates a new [HyperNodeState].
  /// [clusterId] Cluster ID
  /// [createTime] The creation time of the resource
  /// [dataDisks] Optional.
  /// [hostname] The host name prefix of the sub computing node
  /// [hpnZone] Number of the cluster to which the hyper computing node belongs
  /// [loginPassword] Login Password of the sub computing node
  /// [machineType] The model used by the hyper computing node
  /// [nodeGroupId] Node group ID
  /// [paymentDuration] The duration of the instance purchase, in units.
  /// [paymentType] The payment type of the resource
  /// [regionId] The region ID of the resource
  /// [renewalDuration] Number of auto-renewal cycles
  /// [renewalStatus] Automatic renewal status. Value: AutoRenewal: automatic renewal. ManualRenewal: manual renewal. The default ManualRenewal.
  /// [resourceGroupId] The ID of the resource group
  /// [serverArch] Hyper Node Architecture
  /// [stageNum] The number of installments of the hyper computing node of the fixed fee installment.
  /// [status] The status of the resource
  /// [tags] The tag of the resource
  /// [userData] Custom user data for the sub computing node
  /// [vpcId] The ID of the vpc to which the sub computing node
  /// [vswitchId] The ID of the vswitch to which the sub computing node
  /// [zoneId] The zone where the hyper compute node is located
  HyperNodeState({
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? createTime,
    pulumi.Output<List<HyperNodeDataDisk>>? dataDisks,
    pulumi.Output<String>? hostname,
    pulumi.Output<String>? hpnZone,
    pulumi.Output<String>? loginPassword,
    pulumi.Output<String>? machineType,
    pulumi.Output<String>? nodeGroupId,
    pulumi.Output<int>? paymentDuration,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? regionId,
    pulumi.Output<int>? renewalDuration,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? serverArch,
    pulumi.Output<String>? stageNum,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? userData,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataDisks = pulumi.Input.asOptionalInput<List<HyperNodeDataDisk>>(dataDisks),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      hpnZone = pulumi.Input.asOptionalInput<String>(hpnZone),
      loginPassword = pulumi.Input.asOptionalInput<String>(loginPassword),
      machineType = pulumi.Input.asOptionalInput<String>(machineType),
      nodeGroupId = pulumi.Input.asOptionalInput<String>(nodeGroupId),
      paymentDuration = pulumi.Input.asOptionalInput<int>(paymentDuration),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      renewalDuration = pulumi.Input.asOptionalInput<int>(renewalDuration),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      serverArch = pulumi.Input.asOptionalInput<String>(serverArch),
      stageNum = pulumi.Input.asOptionalInput<String>(stageNum),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'createTime': ?createTime,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<HyperNodeDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<HyperNodeDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'hpnZone': ?hpnZone,
      'loginPassword': ?loginPassword,
      'machineType': ?machineType,
      'nodeGroupId': ?nodeGroupId,
      'paymentDuration': ?paymentDuration,
      'paymentType': ?paymentType,
      'regionId': ?regionId,
      'renewalDuration': ?renewalDuration,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'serverArch': ?serverArch,
      'stageNum': ?stageNum,
      'status': ?status,
      'tags': ?tags,
      'userData': ?userData,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory HyperNodeState.fromMap(Map<String, dynamic> map) {
    return HyperNodeState(
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Output.create<List<HyperNodeDataDisk>>(pulumi.Input.decodeList<HyperNodeDataDisk>(map['dataDisks'], (value) => HyperNodeDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      hpnZone: map['hpnZone'] == null ? null : pulumi.Output.create<String>(map['hpnZone'] as String),
      loginPassword: map['loginPassword'] == null ? null : pulumi.Output.create<String>(map['loginPassword'] as String),
      machineType: map['machineType'] == null ? null : pulumi.Output.create<String>(map['machineType'] as String),
      nodeGroupId: map['nodeGroupId'] == null ? null : pulumi.Output.create<String>(map['nodeGroupId'] as String),
      paymentDuration: map['paymentDuration'] == null ? null : pulumi.Output.create<int>(map['paymentDuration'] as int),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      renewalDuration: map['renewalDuration'] == null ? null : pulumi.Output.create<int>(map['renewalDuration'] as int),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      serverArch: map['serverArch'] == null ? null : pulumi.Output.create<String>(map['serverArch'] as String),
      stageNum: map['stageNum'] == null ? null : pulumi.Output.create<String>(map['stageNum'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

