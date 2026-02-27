// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Member.
class MemberArgs3 {
  /// The AWS account ID for the account.
  final Input<String> accountId;

  /// The email address for the account.
  final Input<String> email;

  /// Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to `true`.
  final Input<bool>? invitationDisableEmailNotification;

  /// A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation.
  final Input<String>? invitationMessage;

  /// Send an invitation to a member
  final Input<bool>? invite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  final Input<String>? status;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  MemberArgs3({
    required this.accountId,
    required this.email,
    this.invitationDisableEmailNotification,
    this.invitationMessage,
    this.invite,
    this.region,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['email'] = email;
    final invitationDisableEmailNotificationValue =
        invitationDisableEmailNotification;
    if (invitationDisableEmailNotificationValue != null) {
      map['invitationDisableEmailNotification'] =
          invitationDisableEmailNotificationValue;
    }
    final invitationMessageValue = invitationMessage;
    if (invitationMessageValue != null) {
      map['invitationMessage'] = invitationMessageValue;
    }
    final inviteValue = invite;
    if (inviteValue != null) {
      map['invite'] = inviteValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory MemberArgs3.fromMap(Map<String, dynamic> map) {
    return MemberArgs3(
      accountId: Input.asInput<String>(map['accountId']),
      email: Input.asInput<String>(map['email']),
      invitationDisableEmailNotification: Input.asOptionalInput<bool>(
          map['invitationDisableEmailNotification']),
      invitationMessage:
          Input.asOptionalInput<String>(map['invitationMessage']),
      invite: Input.asOptionalInput<bool>(map['invite']),
      region: Input.asOptionalInput<String>(map['region']),
      status: Input.asOptionalInput<String>(map['status']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
