// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_invitation_args_doc}
/// The set of arguments for Invitation.
/// {@endtemplate}
/// {@macro pulumi_datashare_invitation_args_doc}
class InvitationArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;

  /// The expiration date for the invitation and share subscription.
  final pulumi.Input<String>? expirationDate;

  /// The name of the invitation.
  final pulumi.Input<String>? invitationName;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the share to send the invitation for.
  final pulumi.Input<String> shareName;

  /// The target Azure AD Id. Can't be combined with email.
  final pulumi.Input<String>? targetActiveDirectoryId;

  /// The email the invitation is directed to.
  final pulumi.Input<String>? targetEmail;

  /// The target user or application Id that invitation is being sent to.
  /// Must be specified along TargetActiveDirectoryId. This enables sending
  /// invitations to specific users or applications in an AD tenant.
  final pulumi.Input<String>? targetObjectId;

  /// Creates a new [InvitationArgs].
  /// [accountName] The name of the share account.
  /// [expirationDate] The expiration date for the invitation and share subscription.
  /// [invitationName] The name of the invitation.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to send the invitation for.
  /// [targetActiveDirectoryId] The target Azure AD Id. Can't be combined with email.
  /// [targetEmail] The email the invitation is directed to.
  /// [targetObjectId] The target user or application Id that invitation is being sent to.
  InvitationArgs({
    required this.accountName,
    this.expirationDate,
    this.invitationName,
    required this.resourceGroupName,
    required this.shareName,
    this.targetActiveDirectoryId,
    this.targetEmail,
    this.targetObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'expirationDate': ?expirationDate,
      'invitationName': ?invitationName,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'targetActiveDirectoryId': ?targetActiveDirectoryId,
      'targetEmail': ?targetEmail,
      'targetObjectId': ?targetObjectId,
    };
  }

  factory InvitationArgs.fromMap(Map<String, dynamic> map) {
    return InvitationArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      expirationDate: (() {
        final guardedValue = map['expirationDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      invitationName: (() {
        final guardedValue = map['invitationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
      targetActiveDirectoryId: (() {
        final guardedValue = map['targetActiveDirectoryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetEmail: (() {
        final guardedValue = map['targetEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetObjectId: (() {
        final guardedValue = map['targetObjectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
