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
    pulumi.Output<String>? clusterId,
    pulumi.Output<List<NodeGroupAttachmentDataDisk>>? dataDisks,
    pulumi.Output<String>? hostname,
    pulumi.Output<String>? loginPassword,
    pulumi.Output<String>? nodeGroupId,
    pulumi.Output<String>? nodeId,
    pulumi.Output<String>? userData,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      dataDisks = pulumi.Input.asOptionalInput<List<NodeGroupAttachmentDataDisk>>(dataDisks),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      loginPassword = pulumi.Input.asOptionalInput<String>(loginPassword),
      nodeGroupId = pulumi.Input.asOptionalInput<String>(nodeGroupId),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Output.create<List<NodeGroupAttachmentDataDisk>>(pulumi.Input.decodeList<NodeGroupAttachmentDataDisk>(map['dataDisks'], (value) => NodeGroupAttachmentDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      loginPassword: map['loginPassword'] == null ? null : pulumi.Output.create<String>(map['loginPassword'] as String),
      nodeGroupId: map['nodeGroupId'] == null ? null : pulumi.Output.create<String>(map['nodeGroupId'] as String),
      nodeId: map['nodeId'] == null ? null : pulumi.Output.create<String>(map['nodeId'] as String),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

