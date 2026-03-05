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
    this.comment,
    this.hostGroupId,
    this.hostGroupName,
    this.instanceId,
  });

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
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostGroupId: (() { final guardedValue = map['hostGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostGroupName: (() { final guardedValue = map['hostGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

