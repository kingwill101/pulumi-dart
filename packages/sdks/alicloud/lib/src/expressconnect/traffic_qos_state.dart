// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrafficQos resources.
class TrafficQosState {
  /// The description of the QoS policy.
  /// The length is `0` to `256` characters and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? qosDescription;
  /// The name of the QoS policy.
  /// The length is `0` to `128` characters and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? qosName;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the QoS policy.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TrafficQosState].
  /// [qosDescription] The description of the QoS policy.
  /// [qosName] The name of the QoS policy.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the QoS policy.
  /// [tags] The tag of the resource.
  TrafficQosState({
    this.qosDescription,
    this.qosName,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qosDescription': ?qosDescription,
      'qosName': ?qosName,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory TrafficQosState.fromMap(Map<String, dynamic> map) {
    return TrafficQosState(
      qosDescription: map['qosDescription'] == null ? null : (map['qosDescription'] as String).input(),
      qosName: map['qosName'] == null ? null : (map['qosName'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

