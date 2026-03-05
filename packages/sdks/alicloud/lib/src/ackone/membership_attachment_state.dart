// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MembershipAttachment resources.
class MembershipAttachmentState {
  /// The ID of the cluster to which the membership is being attached.
  final pulumi.Input<String>? clusterId;
  /// The ID of the member being attached to the cluster.
  final pulumi.Input<String>? subClusterId;

  /// Creates a new [MembershipAttachmentState].
  /// [clusterId] The ID of the cluster to which the membership is being attached.
  /// [subClusterId] The ID of the member being attached to the cluster.
  MembershipAttachmentState({
    this.clusterId,
    this.subClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'subClusterId': ?subClusterId,
    };
  }

  factory MembershipAttachmentState.fromMap(Map<String, dynamic> map) {
    return MembershipAttachmentState(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subClusterId: (() { final guardedValue = map['subClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

