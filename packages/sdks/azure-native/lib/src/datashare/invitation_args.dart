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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? expirationDate,
    pulumi.Output<String>? invitationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareName,
    pulumi.Output<String>? targetActiveDirectoryId,
    pulumi.Output<String>? targetEmail,
    pulumi.Output<String>? targetObjectId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      invitationName = pulumi.Input.asOptionalInput<String>(invitationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName),
      targetActiveDirectoryId = pulumi.Input.asOptionalInput<String>(targetActiveDirectoryId),
      targetEmail = pulumi.Input.asOptionalInput<String>(targetEmail),
      targetObjectId = pulumi.Input.asOptionalInput<String>(targetObjectId);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      expirationDate: map['expirationDate'] == null ? null : pulumi.Output.create<String>(map['expirationDate'] as String),
      invitationName: map['invitationName'] == null ? null : pulumi.Output.create<String>(map['invitationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
      targetActiveDirectoryId: map['targetActiveDirectoryId'] == null ? null : pulumi.Output.create<String>(map['targetActiveDirectoryId'] as String),
      targetEmail: map['targetEmail'] == null ? null : pulumi.Output.create<String>(map['targetEmail'] as String),
      targetObjectId: map['targetObjectId'] == null ? null : pulumi.Output.create<String>(map['targetObjectId'] as String),
    );
  }
}

