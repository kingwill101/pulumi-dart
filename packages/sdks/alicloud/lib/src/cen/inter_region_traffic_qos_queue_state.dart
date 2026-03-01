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
    pulumi.Output<String>? bandwidth,
    pulumi.Output<List<int>>? dscps,
    pulumi.Output<String>? interRegionTrafficQosQueueDescription,
    pulumi.Output<String>? interRegionTrafficQosQueueName,
    pulumi.Output<int>? remainBandwidthPercent,
    pulumi.Output<String>? status,
    pulumi.Output<String>? trafficQosPolicyId,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<String>(bandwidth),
      dscps = pulumi.Input.asOptionalInput<List<int>>(dscps),
      interRegionTrafficQosQueueDescription = pulumi.Input.asOptionalInput<String>(interRegionTrafficQosQueueDescription),
      interRegionTrafficQosQueueName = pulumi.Input.asOptionalInput<String>(interRegionTrafficQosQueueName),
      remainBandwidthPercent = pulumi.Input.asOptionalInput<int>(remainBandwidthPercent),
      status = pulumi.Input.asOptionalInput<String>(status),
      trafficQosPolicyId = pulumi.Input.asOptionalInput<String>(trafficQosPolicyId);

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
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<String>(map['bandwidth'] as String),
      dscps: map['dscps'] == null ? null : pulumi.Output.create<List<int>>((map['dscps'] as List).cast<int>()),
      interRegionTrafficQosQueueDescription: map['interRegionTrafficQosQueueDescription'] == null ? null : pulumi.Output.create<String>(map['interRegionTrafficQosQueueDescription'] as String),
      interRegionTrafficQosQueueName: map['interRegionTrafficQosQueueName'] == null ? null : pulumi.Output.create<String>(map['interRegionTrafficQosQueueName'] as String),
      remainBandwidthPercent: map['remainBandwidthPercent'] == null ? null : pulumi.Output.create<int>(map['remainBandwidthPercent'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      trafficQosPolicyId: map['trafficQosPolicyId'] == null ? null : pulumi.Output.create<String>(map['trafficQosPolicyId'] as String),
    );
  }
}

