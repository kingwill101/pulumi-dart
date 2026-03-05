// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InterRegionTrafficQosQueue resources.
class InterRegionTrafficQosQueueState {
  /// The guaranteed bandwidth value. If guaranteed by bandwidth is selected for TrafficQosPolicy, this value is valid.
  final pulumi.Input<String>? bandwidth;
  /// The DSCP value of the traffic packet to be matched in the current queue, ranging from 0 to 63.
  final pulumi.Input<List<int>>? dscps;
  /// The description information of the traffic scheduling policy.
  final pulumi.Input<String>? interRegionTrafficQosQueueDescription;
  /// The name of the traffic scheduling policy.
  final pulumi.Input<String>? interRegionTrafficQosQueueName;
  /// The percentage of cross-region bandwidth that the current queue can use.
  final pulumi.Input<int>? remainBandwidthPercent;
  /// The status of the traffic scheduling policy.
  final pulumi.Input<String>? status;
  /// The ID of the traffic scheduling policy.
  final pulumi.Input<String>? trafficQosPolicyId;

  /// Creates a new [InterRegionTrafficQosQueueState].
  /// [bandwidth] The guaranteed bandwidth value. If guaranteed by bandwidth is selected for TrafficQosPolicy, this value is valid.
  /// [dscps] The DSCP value of the traffic packet to be matched in the current queue, ranging from 0 to 63.
  /// [interRegionTrafficQosQueueDescription] The description information of the traffic scheduling policy.
  /// [interRegionTrafficQosQueueName] The name of the traffic scheduling policy.
  /// [remainBandwidthPercent] The percentage of cross-region bandwidth that the current queue can use.
  /// [status] The status of the traffic scheduling policy.
  /// [trafficQosPolicyId] The ID of the traffic scheduling policy.
  InterRegionTrafficQosQueueState({
    this.bandwidth,
    this.dscps,
    this.interRegionTrafficQosQueueDescription,
    this.interRegionTrafficQosQueueName,
    this.remainBandwidthPercent,
    this.status,
    this.trafficQosPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'dscps': ?dscps,
      'interRegionTrafficQosQueueDescription': ?interRegionTrafficQosQueueDescription,
      'interRegionTrafficQosQueueName': ?interRegionTrafficQosQueueName,
      'remainBandwidthPercent': ?remainBandwidthPercent,
      'status': ?status,
      'trafficQosPolicyId': ?trafficQosPolicyId,
    };
  }

  factory InterRegionTrafficQosQueueState.fromMap(Map<String, dynamic> map) {
    return InterRegionTrafficQosQueueState(
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dscps: (() { final guardedValue = map['dscps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      interRegionTrafficQosQueueDescription: (() { final guardedValue = map['interRegionTrafficQosQueueDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interRegionTrafficQosQueueName: (() { final guardedValue = map['interRegionTrafficQosQueueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remainBandwidthPercent: (() { final guardedValue = map['remainBandwidthPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficQosPolicyId: (() { final guardedValue = map['trafficQosPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

