// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_node_data_disk.dart';

/// {@template pulumi_eflo_hyper_node_hyper_node_args_doc}
/// The set of arguments for HyperNode.
/// {@endtemplate}
/// {@macro pulumi_eflo_hyper_node_hyper_node_args_doc}
class HyperNodeArgs {
  /// Cluster ID
  final pulumi.Input<String>? clusterId;
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
  final pulumi.Input<String> paymentType;
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

  /// Creates a new [HyperNodeArgs].
  /// [clusterId] Cluster ID
  /// [dataDisks] Optional.
  /// [hostname] The host name prefix of the sub computing node
  /// [hpnZone] Number of the cluster to which the hyper computing node belongs
  /// [loginPassword] Login Password of the sub computing node
  /// [machineType] The model used by the hyper computing node
  /// [nodeGroupId] Node group ID
  /// [paymentDuration] The duration of the instance purchase, in units.
  /// [paymentType] The payment type of the resource
  /// [renewalDuration] Number of auto-renewal cycles
  /// [renewalStatus] Automatic renewal status. Value: AutoRenewal: automatic renewal. ManualRenewal: manual renewal. The default ManualRenewal.
  /// [resourceGroupId] The ID of the resource group
  /// [serverArch] Hyper Node Architecture
  /// [stageNum] The number of installments of the hyper computing node of the fixed fee installment.
  /// [tags] The tag of the resource
  /// [userData] Custom user data for the sub computing node
  /// [vpcId] The ID of the vpc to which the sub computing node
  /// [vswitchId] The ID of the vswitch to which the sub computing node
  /// [zoneId] The zone where the hyper compute node is located
  HyperNodeArgs({
    String? clusterId,
    List<HyperNodeDataDisk>? dataDisks,
    String? hostname,
    String? hpnZone,
    String? loginPassword,
    String? machineType,
    String? nodeGroupId,
    int? paymentDuration,
    required String paymentType,
    int? renewalDuration,
    String? renewalStatus,
    String? resourceGroupId,
    String? serverArch,
    String? stageNum,
    Map<String, String>? tags,
    String? userData,
    String? vpcId,
    String? vswitchId,
    String? zoneId,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      dataDisks = pulumi.Input.asOptionalInput<List<HyperNodeDataDisk>>(dataDisks),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      hpnZone = pulumi.Input.asOptionalInput<String>(hpnZone),
      loginPassword = pulumi.Input.asOptionalInput<String>(loginPassword),
      machineType = pulumi.Input.asOptionalInput<String>(machineType),
      nodeGroupId = pulumi.Input.asOptionalInput<String>(nodeGroupId),
      paymentDuration = pulumi.Input.asOptionalInput<int>(paymentDuration),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      renewalDuration = pulumi.Input.asOptionalInput<int>(renewalDuration),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      serverArch = pulumi.Input.asOptionalInput<String>(serverArch),
      stageNum = pulumi.Input.asOptionalInput<String>(stageNum),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<HyperNodeDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<HyperNodeDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'hpnZone': ?hpnZone,
      'loginPassword': ?loginPassword,
      'machineType': ?machineType,
      'nodeGroupId': ?nodeGroupId,
      'paymentDuration': ?paymentDuration,
      'paymentType': paymentType,
      'renewalDuration': ?renewalDuration,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'serverArch': ?serverArch,
      'stageNum': ?stageNum,
      'tags': ?tags,
      'userData': ?userData,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory HyperNodeArgs.fromMap(Map<String, dynamic> map) {
    return HyperNodeArgs(
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<HyperNodeDataDisk>(map['dataDisks'], (value) => HyperNodeDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      hpnZone: map['hpnZone'] == null ? null : map['hpnZone'] as String,
      loginPassword: map['loginPassword'] == null ? null : map['loginPassword'] as String,
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
      nodeGroupId: map['nodeGroupId'] == null ? null : map['nodeGroupId'] as String,
      paymentDuration: map['paymentDuration'] == null ? null : map['paymentDuration'] as int,
      paymentType: map['paymentType'] as String,
      renewalDuration: map['renewalDuration'] == null ? null : map['renewalDuration'] as int,
      renewalStatus: map['renewalStatus'] == null ? null : map['renewalStatus'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      serverArch: map['serverArch'] == null ? null : map['serverArch'] as String,
      stageNum: map['stageNum'] == null ? null : map['stageNum'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      userData: map['userData'] == null ? null : map['userData'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

