// ignore_for_file: unused_element, unnecessary_cast


class GetInterRegionTrafficQosQueuesQueue {
  /// The DSCP value of the traffic packet to be matched in the current queue, ranging from 0 to 63.
  final List<String> dscps;
  final String id;
  /// The description information of the traffic scheduling policy.
  final String interRegionTrafficQosQueueDescription;
  /// The ID of the resource.
  final String interRegionTrafficQosQueueId;
  /// The name of the traffic scheduling policy.
  final String interRegionTrafficQosQueueName;
  /// The percentage of cross-region bandwidth that the current queue can use.
  final int remainBandwidthPercent;
  /// The status of the traffic scheduling policy. -**Creating**: The function is being created.-**Active**: available.-**Modifying**: is being modified.-**Deleting**: Deleted.-**Deleted**: Deleted.
  final String status;
  /// The ID of the traffic scheduling policy.
  final String trafficQosPolicyId;

  /// Creates a new [GetInterRegionTrafficQosQueuesQueue].
  /// [dscps] The DSCP value of the traffic packet to be matched in the current queue, ranging from 0 to 63.
  /// [id] Required.
  /// [interRegionTrafficQosQueueDescription] The description information of the traffic scheduling policy.
  /// [interRegionTrafficQosQueueId] The ID of the resource.
  /// [interRegionTrafficQosQueueName] The name of the traffic scheduling policy.
  /// [remainBandwidthPercent] The percentage of cross-region bandwidth that the current queue can use.
  /// [status] The status of the traffic scheduling policy. -**Creating**: The function is being created.-**Active**: available.-**Modifying**: is being modified.-**Deleting**: Deleted.-**Deleted**: Deleted.
  /// [trafficQosPolicyId] The ID of the traffic scheduling policy.
  GetInterRegionTrafficQosQueuesQueue({
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
      dscps: (map['dscps'] as List).cast<String>(),
      id: map['id'] as String,
      interRegionTrafficQosQueueDescription: map['interRegionTrafficQosQueueDescription'] as String,
      interRegionTrafficQosQueueId: map['interRegionTrafficQosQueueId'] as String,
      interRegionTrafficQosQueueName: map['interRegionTrafficQosQueueName'] as String,
      remainBandwidthPercent: map['remainBandwidthPercent'] as int,
      status: map['status'] as String,
      trafficQosPolicyId: map['trafficQosPolicyId'] as String,
    );
  }
}

