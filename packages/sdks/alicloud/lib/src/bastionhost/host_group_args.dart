// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_host_group_host_group_args_doc}
/// The set of arguments for HostGroup.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_host_group_host_group_args_doc}
class HostGroupArgs {
  /// Specify the New Host Group of Notes, Supports up to 500 Characters.
  final pulumi.Input<String>? comment;
  /// Specify the New Host Group Name, Supports up to 128 Characters.
  final pulumi.Input<String> hostGroupName;
  /// Specify the New Host Group Where the Bastion Host ID of.
  final pulumi.Input<String> instanceId;

  /// Creates a new [HostGroupArgs].
  /// [comment] Specify the New Host Group of Notes, Supports up to 500 Characters.
  /// [hostGroupName] Specify the New Host Group Name, Supports up to 128 Characters.
  /// [instanceId] Specify the New Host Group Where the Bastion Host ID of.
  HostGroupArgs({
    this.comment,
    required this.hostGroupName,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'hostGroupName': hostGroupName,
      'instanceId': instanceId,
    };
  }

  factory HostGroupArgs.fromMap(Map<String, dynamic> map) {
    return HostGroupArgs(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostGroupName: pulumi.Input.fromValue(map['hostGroupName'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

