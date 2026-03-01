// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_instance_member_instance_member_args_doc}
/// The set of arguments for InstanceMember.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_instance_member_instance_member_args_doc}
class InstanceMemberArgs {
  /// Remarks of cloud firewall member accounts.
  final pulumi.Input<String>? memberDesc;
  /// The UID of the cloud firewall member account.
  final pulumi.Input<String> memberUid;

  /// Creates a new [InstanceMemberArgs].
  /// [memberDesc] Remarks of cloud firewall member accounts.
  /// [memberUid] The UID of the cloud firewall member account.
  InstanceMemberArgs({
    pulumi.Output<String>? memberDesc,
    required pulumi.Output<String> memberUid,
  }) :
      memberDesc = pulumi.Input.asOptionalInput<String>(memberDesc),
      memberUid = pulumi.Input.asInput<String>(memberUid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberDesc': ?memberDesc,
      'memberUid': memberUid,
    };
  }

  factory InstanceMemberArgs.fromMap(Map<String, dynamic> map) {
    return InstanceMemberArgs(
      memberDesc: map['memberDesc'] == null ? null : pulumi.Output.create<String>(map['memberDesc'] as String),
      memberUid: pulumi.Output.create<String>(map['memberUid'] as String),
    );
  }
}

