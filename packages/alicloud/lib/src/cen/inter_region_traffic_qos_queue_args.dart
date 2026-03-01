// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_inter_region_traffic_qos_queue_inter_region_traffic_qos_queue_args_doc}
/// The set of arguments for InterRegionTrafficQosQueue.
/// {@endtemplate}
/// {@macro pulumi_cen_inter_region_traffic_qos_queue_inter_region_traffic_qos_queue_args_doc}
class InterRegionTrafficQosQueueArgs {
  /// The guaranteed bandwidth value. If guaranteed by bandwidth is selected for TrafficQosPolicy, this value is valid.
  final pulumi.Input<String>? bandwidth;
  /// The DSCP value of the traffic packet to be matched in the current queue, ranging from 0 to 63.
  final pulumi.Input<List<int>> dscps;
  /// The description information of the traffic scheduling policy.
  final pulumi.Input<String>? interRegionTrafficQosQueueDescription;
  /// The name of the traffic scheduling policy.
  final pulumi.Input<String>? interRegionTrafficQosQueueName;
  /// The percentage of cross-region bandwidth that the current queue can use.
  final pulumi.Input<int>? remainBandwidthPercent;
  /// The ID of the traffic scheduling policy.
  final pulumi.Input<String> trafficQosPolicyId;

  /// Creates a new [InterRegionTrafficQosQueueArgs].
  /// [bandwidth] The guaranteed bandwidth value. If guaranteed by bandwidth is selected for TrafficQosPolicy, this value is valid.
  /// [dscps] The DSCP value of the traffic packet to be matched in the current queue, ranging from 0 to 63.
  /// [interRegionTrafficQosQueueDescription] The description information of the traffic scheduling policy.
  /// [interRegionTrafficQosQueueName] The name of the traffic scheduling policy.
  /// [remainBandwidthPercent] The percentage of cross-region bandwidth that the current queue can use.
  /// [trafficQosPolicyId] The ID of the traffic scheduling policy.
  InterRegionTrafficQosQueueArgs({
    String? bandwidth,
    required List<int> dscps,
    String? interRegionTrafficQosQueueDescription,
    String? interRegionTrafficQosQueueName,
    int? remainBandwidthPercent,
    required String trafficQosPolicyId,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<String>(bandwidth),
      dscps = pulumi.Input.asInput<List<int>>(dscps),
      interRegionTrafficQosQueueDescription = pulumi.Input.asOptionalInput<String>(interRegionTrafficQosQueueDescription),
      interRegionTrafficQosQueueName = pulumi.Input.asOptionalInput<String>(interRegionTrafficQosQueueName),
      remainBandwidthPercent = pulumi.Input.asOptionalInput<int>(remainBandwidthPercent),
      trafficQosPolicyId = pulumi.Input.asInput<String>(trafficQosPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'dscps': dscps,
      'interRegionTrafficQosQueueDescription': ?interRegionTrafficQosQueueDescription,
      'interRegionTrafficQosQueueName': ?interRegionTrafficQosQueueName,
      'remainBandwidthPercent': ?remainBandwidthPercent,
      'trafficQosPolicyId': trafficQosPolicyId,
    };
  }

  factory InterRegionTrafficQosQueueArgs.fromMap(Map<String, dynamic> map) {
    return InterRegionTrafficQosQueueArgs(
      bandwidth: map['bandwidth'] == null ? null : map['bandwidth'] as String,
      dscps: (map['dscps'] as List).cast<int>(),
      interRegionTrafficQosQueueDescription: map['interRegionTrafficQosQueueDescription'] == null ? null : map['interRegionTrafficQosQueueDescription'] as String,
      interRegionTrafficQosQueueName: map['interRegionTrafficQosQueueName'] == null ? null : map['interRegionTrafficQosQueueName'] as String,
      remainBandwidthPercent: map['remainBandwidthPercent'] == null ? null : map['remainBandwidthPercent'] as int,
      trafficQosPolicyId: map['trafficQosPolicyId'] as String,
    );
  }
}

