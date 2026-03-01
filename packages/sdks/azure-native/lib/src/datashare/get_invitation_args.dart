// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_invitation_args_doc}
/// Arguments for getInvitation.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_invitation_args_doc}
class GetInvitationArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the invitation.
  final pulumi.Input<String> invitationName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share.
  final pulumi.Input<String> shareName;

  /// Creates a new [GetInvitationArgs].
  /// [accountName] The name of the share account.
  /// [invitationName] The name of the invitation.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share.
  GetInvitationArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> invitationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      invitationName = pulumi.Input.asInput<String>(invitationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'invitationName': invitationName,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
    };
  }

  factory GetInvitationArgs.fromMap(Map<String, dynamic> map) {
    return GetInvitationArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      invitationName: pulumi.Output.create<String>(map['invitationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
    );
  }
}

