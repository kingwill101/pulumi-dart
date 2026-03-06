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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
  const HyperNodeState({
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
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperNodeDataDisk>(guardedValue, (value) => HyperNodeDataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hpnZone: (() { final guardedValue = map['hpnZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginPassword: (() { final guardedValue = map['loginPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupId: (() { final guardedValue = map['nodeGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentDuration: (() { final guardedValue = map['paymentDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalDuration: (() { final guardedValue = map['renewalDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverArch: (() { final guardedValue = map['serverArch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stageNum: (() { final guardedValue = map['stageNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

