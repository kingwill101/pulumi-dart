// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInterRegionTrafficQosQueuesQueue {
  /// The DSCP value of the traffic packet to be matched in the current queue, ranging from 0 to 63.
  final pulumi.Input<List<String>> dscps;
  final pulumi.Input<String> id;
  /// The description information of the traffic scheduling policy.
  final pulumi.Input<String> interRegionTrafficQosQueueDescription;
  /// The ID of the resource.
  final pulumi.Input<String> interRegionTrafficQosQueueId;
  /// The name of the traffic scheduling policy.
  final pulumi.Input<String> interRegionTrafficQosQueueName;
  /// The percentage of cross-region bandwidth that the current queue can use.
  final pulumi.Input<int> remainBandwidthPercent;
  /// The status of the traffic scheduling policy. -**Creating**: The function is being created.-**Active**: available.-**Modifying**: is being modified.-**Deleting**: Deleted.-**Deleted**: Deleted.
  final pulumi.Input<String> status;
  /// The ID of the traffic scheduling policy.
  final pulumi.Input<String> trafficQosPolicyId;

  /// Creates a new [GetInterRegionTrafficQosQueuesQueue].
  /// [dscps] The DSCP value of the traffic packet to be matched in the current queue, ranging from 0 to 63.
  /// [id] Required.
  /// [interRegionTrafficQosQueueDescription] The description information of the traffic scheduling policy.
  /// [interRegionTrafficQosQueueId] The ID of the resource.
  /// [interRegionTrafficQosQueueName] The name of the traffic scheduling policy.
  /// [remainBandwidthPercent] The percentage of cross-region bandwidth that the current queue can use.
  /// [status] The status of the traffic scheduling policy. -**Creating**: The function is being created.-**Active**: available.-**Modifying**: is being modified.-**Deleting**: Deleted.-**Deleted**: Deleted.
  /// [trafficQosPolicyId] The ID of the traffic scheduling policy.
  const GetInterRegionTrafficQosQueuesQueue({
    required this.dscps,
    required this.id,
    required this.interRegionTrafficQosQueueDescription,
    required this.interRegionTrafficQosQueueId,
    required this.interRegionTrafficQosQueueName,
    required this.remainBandwidthPercent,
    required this.status,
    required this.trafficQosPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscps': dscps,
      'id': id,
      'interRegionTrafficQosQueueDescription': interRegionTrafficQosQueueDescription,
      'interRegionTrafficQosQueueId': interRegionTrafficQosQueueId,
      'interRegionTrafficQosQueueName': interRegionTrafficQosQueueName,
      'remainBandwidthPercent': remainBandwidthPercent,
      'status': status,
      'trafficQosPolicyId': trafficQosPolicyId,
    };
  }

  factory GetInterRegionTrafficQosQueuesQueue.fromMap(Map<String, dynamic> map) {
    return GetInterRegionTrafficQosQueuesQueue(
      dscps: pulumi.Input.fromValue((map['dscps'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      interRegionTrafficQosQueueDescription: pulumi.Input.fromValue(map['interRegionTrafficQosQueueDescription'] as String),
      interRegionTrafficQosQueueId: pulumi.Input.fromValue(map['interRegionTrafficQosQueueId'] as String),
      interRegionTrafficQosQueueName: pulumi.Input.fromValue(map['interRegionTrafficQosQueueName'] as String),
      remainBandwidthPercent: pulumi.Input.fromValue(map['remainBandwidthPercent'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
      trafficQosPolicyId: pulumi.Input.fromValue(map['trafficQosPolicyId'] as String),
    );
  }
}

