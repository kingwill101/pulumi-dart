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
    this.clusterId,
    this.createTime,
    this.dataDisks,
    this.hostname,
    this.hpnZone,
    this.loginPassword,
    this.machineType,
    this.nodeGroupId,
    this.paymentDuration,
    this.paymentType,
    this.regionId,
    this.renewalDuration,
    this.renewalStatus,
    this.resourceGroupId,
    this.serverArch,
    this.stageNum,
    this.status,
    this.tags,
    this.userData,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

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
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<HyperNodeDataDisk>(map['dataDisks'], (value) => HyperNodeDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      hpnZone: map['hpnZone'] == null ? null : (map['hpnZone'] as String).input(),
      loginPassword: map['loginPassword'] == null ? null : (map['loginPassword'] as String).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      nodeGroupId: map['nodeGroupId'] == null ? null : (map['nodeGroupId'] as String).input(),
      paymentDuration: map['paymentDuration'] == null ? null : (map['paymentDuration'] as int).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      renewalDuration: map['renewalDuration'] == null ? null : (map['renewalDuration'] as int).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      serverArch: map['serverArch'] == null ? null : (map['serverArch'] as String).input(),
      stageNum: map['stageNum'] == null ? null : (map['stageNum'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      userData: map['userData'] == null ? null : (map['userData'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

