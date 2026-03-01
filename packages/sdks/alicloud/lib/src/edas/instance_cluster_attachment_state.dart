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
  InstanceClusterAttachmentState({
    pulumi.Output<String>? clusterId,
    pulumi.Output<Map<String, String>>? clusterMemberIds,
    pulumi.Output<Map<String, String>>? ecuMap,
    pulumi.Output<List<String>>? instanceIds,
    pulumi.Output<Map<String, int>>? statusMap,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      clusterMemberIds = pulumi.Input.asOptionalInput<Map<String, String>>(clusterMemberIds),
      ecuMap = pulumi.Input.asOptionalInput<Map<String, String>>(ecuMap),
      instanceIds = pulumi.Input.asOptionalInput<List<String>>(instanceIds),
      statusMap = pulumi.Input.asOptionalInput<Map<String, int>>(statusMap);

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
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      clusterMemberIds: map['clusterMemberIds'] == null ? null : pulumi.Output.create<Map<String, String>>((map['clusterMemberIds'] as Map).cast<String, String>()),
      ecuMap: map['ecuMap'] == null ? null : pulumi.Output.create<Map<String, String>>((map['ecuMap'] as Map).cast<String, String>()),
      instanceIds: map['instanceIds'] == null ? null : pulumi.Output.create<List<String>>((map['instanceIds'] as List).cast<String>()),
      statusMap: map['statusMap'] == null ? null : pulumi.Output.create<Map<String, int>>((map['statusMap'] as Map).cast<String, int>()),
    );
  }
}

