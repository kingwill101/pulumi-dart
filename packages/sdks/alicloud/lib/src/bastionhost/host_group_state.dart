// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostGroup resources.
class HostGroupState {
  /// Specify the New Host Group of Notes, Supports up to 500 Characters.
  final pulumi.Input<String>? comment;
  /// Host Group ID.
  final pulumi.Input<String>? hostGroupId;
  /// Specify the New Host Group Name, Supports up to 128 Characters.
  final pulumi.Input<String>? hostGroupName;
  /// Specify the New Host Group Where the Bastion Host ID of.
  final pulumi.Input<String>? instanceId;

  /// Creates a new [HostGroupState].
  /// [comment] Specify the New Host Group of Notes, Supports up to 500 Characters.
  /// [hostGroupId] Host Group ID.
  /// [hostGroupName] Specify the New Host Group Name, Supports up to 128 Characters.
  /// [instanceId] Specify the New Host Group Where the Bastion Host ID of.
  HostGroupState({
    pulumi.Output<String>? comment,
    pulumi.Output<String>? hostGroupId,
    pulumi.Output<String>? hostGroupName,
    pulumi.Output<String>? instanceId,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      hostGroupId = pulumi.Input.asOptionalInput<String>(hostGroupId),
      hostGroupName = pulumi.Input.asOptionalInput<String>(hostGroupName),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'hostGroupId': ?hostGroupId,
      'hostGroupName': ?hostGroupName,
      'instanceId': ?instanceId,
    };
  }

  factory HostGroupState.fromMap(Map<String, dynamic> map) {
    return HostGroupState(
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      hostGroupId: map['hostGroupId'] == null ? null : pulumi.Output.create<String>(map['hostGroupId'] as String),
      hostGroupName: map['hostGroupName'] == null ? null : pulumi.Output.create<String>(map['hostGroupName'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

