// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getInvitation.
class GetInvitationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The expiration date for the invitation and share subscription.
  final String? expirationDate;
  /// The resource id of the azure resource
  final String? id;
  /// unique invitation id
  final String? invitationId;
  /// The status of the invitation.
  final String? invitationStatus;
  /// Name of the azure resource
  final String? name;
  /// The time the recipient responded to the invitation.
  final String? respondedAt;
  /// Gets the time at which the invitation was sent.
  final String? sentAt;
  /// System Data of the Azure resource.
  final SystemDataResponse? systemData;
  /// The target Azure AD Id. Can't be combined with email.
  final String? targetActiveDirectoryId;
  /// The email the invitation is directed to.
  final String? targetEmail;
  /// The target user or application Id that invitation is being sent to.
  /// Must be specified along TargetActiveDirectoryId. This enables sending
  /// invitations to specific users or applications in an AD tenant.
  final String? targetObjectId;
  /// Type of the azure resource
  final String? type;
  /// Email of the user who created the resource
  final String? userEmail;
  /// Name of the user who created the resource
  final String? userName;

  /// Creates a new [GetInvitationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [expirationDate] The expiration date for the invitation and share subscription.
  /// [id] The resource id of the azure resource
  /// [invitationId] unique invitation id
  /// [invitationStatus] The status of the invitation.
  /// [name] Name of the azure resource
  /// [respondedAt] The time the recipient responded to the invitation.
  /// [sentAt] Gets the time at which the invitation was sent.
  /// [systemData] System Data of the Azure resource.
  /// [targetActiveDirectoryId] The target Azure AD Id. Can't be combined with email.
  /// [targetEmail] The email the invitation is directed to.
  /// [targetObjectId] The target user or application Id that invitation is being sent to.
  /// [type] Type of the azure resource
  /// [userEmail] Email of the user who created the resource
  /// [userName] Name of the user who created the resource
  const GetInvitationResult({
    this.azureApiVersion,
    this.expirationDate,
    this.id,
    this.invitationId,
    this.invitationStatus,
    this.name,
    this.respondedAt,
    this.sentAt,
    this.systemData,
    this.targetActiveDirectoryId,
    this.targetEmail,
    this.targetObjectId,
    this.type,
    this.userEmail,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'expirationDate': ?expirationDate,
      'id': ?id,
      'invitationId': ?invitationId,
      'invitationStatus': ?invitationStatus,
      'name': ?name,
      'respondedAt': ?respondedAt,
      'sentAt': ?sentAt,
      'systemData': ?systemData?.toMap(),
      'targetActiveDirectoryId': ?targetActiveDirectoryId,
      'targetEmail': ?targetEmail,
      'targetObjectId': ?targetObjectId,
      'type': ?type,
      'userEmail': ?userEmail,
      'userName': ?userName,
    };
  }

  factory GetInvitationResult.fromMap(Map<String, dynamic> map) {
    return GetInvitationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invitationId: (() { final guardedValue = map['invitationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invitationStatus: (() { final guardedValue = map['invitationStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      respondedAt: (() { final guardedValue = map['respondedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sentAt: (() { final guardedValue = map['sentAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetActiveDirectoryId: (() { final guardedValue = map['targetActiveDirectoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetEmail: (() { final guardedValue = map['targetEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetObjectId: (() { final guardedValue = map['targetObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userEmail: (() { final guardedValue = map['userEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
