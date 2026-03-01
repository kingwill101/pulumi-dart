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
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? subClusterId,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      subClusterId = pulumi.Input.asOptionalInput<String>(subClusterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'subClusterId': ?subClusterId,
    };
  }

  factory MembershipAttachmentState.fromMap(Map<String, dynamic> map) {
    return MembershipAttachmentState(
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      subClusterId: map['subClusterId'] == null ? null : pulumi.Output.create<String>(map['subClusterId'] as String),
    );
  }
}

