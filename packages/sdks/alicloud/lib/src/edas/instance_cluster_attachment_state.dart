// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceClusterAttachment resources.
class InstanceClusterAttachmentState {
  /// The ID of the cluster that you want to create the application.
  final pulumi.Input<String>? clusterId;
  /// The cluster members map of the resource supplied above. The key is instance_id and the value is cluster_member_id.
  final pulumi.Input<Map<String, String>>? clusterMemberIds;
  /// The ecu map of the resource supplied above. The key is instance_id and the value is ecu_id.
  final pulumi.Input<Map<String, String>>? ecuMap;
  /// The ID of instance. Type: list.
  final pulumi.Input<List<String>>? instanceIds;
  /// The status map of the resource supplied above. The key is instance_id and the values are 1(running) 0(converting) -1(failed) and -2(offline).
  final pulumi.Input<Map<String, int>>? statusMap;

  /// Creates a new [InstanceClusterAttachmentState].
  /// [clusterId] The ID of the cluster that you want to create the application.
  /// [clusterMemberIds] The cluster members map of the resource supplied above. The key is instance_id and the value is cluster_member_id.
  /// [ecuMap] The ecu map of the resource supplied above. The key is instance_id and the value is ecu_id.
  /// [instanceIds] The ID of instance. Type: list.
  /// [statusMap] The status map of the resource supplied above. The key is instance_id and the values are 1(running) 0(converting) -1(failed) and -2(offline).
  const InstanceClusterAttachmentState({
    this.clusterId,
    this.clusterMemberIds,
    this.ecuMap,
    this.instanceIds,
    this.statusMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'clusterMemberIds': ?clusterMemberIds,
      'ecuMap': ?ecuMap,
      'instanceIds': ?instanceIds,
      'statusMap': ?statusMap,
    };
  }

  factory InstanceClusterAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceClusterAttachmentState(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterMemberIds: (() { final guardedValue = map['clusterMemberIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ecuMap: (() { final guardedValue = map['ecuMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      instanceIds: (() { final guardedValue = map['instanceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      statusMap: (() { final guardedValue = map['statusMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
    );
  }
}

