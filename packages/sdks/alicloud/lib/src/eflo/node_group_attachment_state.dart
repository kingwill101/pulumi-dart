// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_attachment_data_disk.dart';

/// Input properties used for looking up and filtering NodeGroupAttachment resources.
class NodeGroupAttachmentState {
  /// Cluster ID
  final pulumi.Input<String>? clusterId;
  /// The data disk of the cloud disk to be attached to the node. See `data_disk` below.
  final pulumi.Input<List<NodeGroupAttachmentDataDisk>>? dataDisks;
  /// Node hostname
  final pulumi.Input<String>? hostname;
  /// Node login password
  final pulumi.Input<String>? loginPassword;
  /// Node group ID
  final pulumi.Input<String>? nodeGroupId;
  /// Node ID
  final pulumi.Input<String>? nodeId;
  /// User-defined data
  final pulumi.Input<String>? userData;
  /// Vpc id
  final pulumi.Input<String>? vpcId;
  /// vswitch id
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [NodeGroupAttachmentState].
  /// [clusterId] Cluster ID
  /// [dataDisks] The data disk of the cloud disk to be attached to the node. See `data_disk` below.
  /// [hostname] Node hostname
  /// [loginPassword] Node login password
  /// [nodeGroupId] Node group ID
  /// [nodeId] Node ID
  /// [userData] User-defined data
  /// [vpcId] Vpc id
  /// [vswitchId] vswitch id
  NodeGroupAttachmentState({
    this.clusterId,
    this.dataDisks,
    this.hostname,
    this.loginPassword,
    this.nodeGroupId,
    this.nodeId,
    this.userData,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupAttachmentDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<NodeGroupAttachmentDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'loginPassword': ?loginPassword,
      'nodeGroupId': ?nodeGroupId,
      'nodeId': ?nodeId,
      'userData': ?userData,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory NodeGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return NodeGroupAttachmentState(
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<NodeGroupAttachmentDataDisk>(map['dataDisks']!, (value) => NodeGroupAttachmentDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      loginPassword: map['loginPassword'] == null ? null : (map['loginPassword']! as String).input(),
      nodeGroupId: map['nodeGroupId'] == null ? null : (map['nodeGroupId']! as String).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId']! as String).input(),
      userData: map['userData'] == null ? null : (map['userData']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

