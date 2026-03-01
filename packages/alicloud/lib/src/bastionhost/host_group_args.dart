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
    String? comment,
    required String hostGroupName,
    required String instanceId,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      hostGroupName = pulumi.Input.asInput<String>(hostGroupName),
      instanceId = pulumi.Input.asInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'hostGroupName': hostGroupName,
      'instanceId': instanceId,
    };
  }

  factory HostGroupArgs.fromMap(Map<String, dynamic> map) {
    return HostGroupArgs(
      comment: map['comment'] == null ? null : map['comment'] as String,
      hostGroupName: map['hostGroupName'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

