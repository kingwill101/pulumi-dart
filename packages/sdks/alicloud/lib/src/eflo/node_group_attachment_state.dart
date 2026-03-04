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
      'dataDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<NodeGroupAttachmentDataDisk>,
            List<Map<String, dynamic>>
          >(
            dataDisks,
            (value) =>
                pulumi.Input.encodeList<
                  NodeGroupAttachmentDataDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataDisks: (() {
        final guardedValue = map['dataDisks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NodeGroupAttachmentDataDisk>(
            guardedValue,
            (value) => NodeGroupAttachmentDataDisk.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      hostname: (() {
        final guardedValue = map['hostname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loginPassword: (() {
        final guardedValue = map['loginPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeGroupId: (() {
        final guardedValue = map['nodeGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeId: (() {
        final guardedValue = map['nodeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userData: (() {
        final guardedValue = map['userData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
