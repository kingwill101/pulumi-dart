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
  const InterRegionTrafficQosQueueArgs({
    this.bandwidth,
    required this.dscps,
    this.interRegionTrafficQosQueueDescription,
    this.interRegionTrafficQosQueueName,
    this.remainBandwidthPercent,
    required this.trafficQosPolicyId,
  });

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
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dscps: pulumi.Input.fromValue((map['dscps'] as List).cast<int>()),
      interRegionTrafficQosQueueDescription: (() { final guardedValue = map['interRegionTrafficQosQueueDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interRegionTrafficQosQueueName: (() { final guardedValue = map['interRegionTrafficQosQueueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remainBandwidthPercent: (() { final guardedValue = map['remainBandwidthPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      trafficQosPolicyId: pulumi.Input.fromValue(map['trafficQosPolicyId'] as String),
    );
  }
}

