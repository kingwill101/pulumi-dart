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
    required this.accountName,
    required this.invitationName,
    required this.resourceGroupName,
    required this.shareName,
  });

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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      invitationName: pulumi.Input.fromValue(map['invitationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
    );
  }
}
