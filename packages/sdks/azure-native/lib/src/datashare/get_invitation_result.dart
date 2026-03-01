// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getInvitation.
class GetInvitationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The expiration date for the invitation and share subscription.
  final String? expirationDate;
  /// The resource id of the azure resource
  final String id;
  /// unique invitation id
  final String invitationId;
  /// The status of the invitation.
  final String invitationStatus;
  /// Name of the azure resource
  final String name;
  /// The time the recipient responded to the invitation.
  final String respondedAt;
  /// Gets the time at which the invitation was sent.
  final String sentAt;
  /// System Data of the Azure resource.
  final SystemDataResponse systemData;
  /// The target Azure AD Id. Can't be combined with email.
  final String? targetActiveDirectoryId;
  /// The email the invitation is directed to.
  final String? targetEmail;
  /// The target user or application Id that invitation is being sent to.
  /// Must be specified along TargetActiveDirectoryId. This enables sending
  /// invitations to specific users or applications in an AD tenant.
  final String? targetObjectId;
  /// Type of the azure resource
  final String type;
  /// Email of the user who created the resource
  final String userEmail;
  /// Name of the user who created the resource
  final String userName;

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
  GetInvitationResult({
    required this.azureApiVersion,
    this.expirationDate,
    required this.id,
    required this.invitationId,
    required this.invitationStatus,
    required this.name,
    required this.respondedAt,
    required this.sentAt,
    required this.systemData,
    this.targetActiveDirectoryId,
    this.targetEmail,
    this.targetObjectId,
    required this.type,
    required this.userEmail,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'expirationDate': ?expirationDate,
      'id': id,
      'invitationId': invitationId,
      'invitationStatus': invitationStatus,
      'name': name,
      'respondedAt': respondedAt,
      'sentAt': sentAt,
      'systemData': systemData.toMap(),
      'targetActiveDirectoryId': ?targetActiveDirectoryId,
      'targetEmail': ?targetEmail,
      'targetObjectId': ?targetObjectId,
      'type': type,
      'userEmail': userEmail,
      'userName': userName,
    };
  }

  factory GetInvitationResult.fromMap(Map<String, dynamic> map) {
    return GetInvitationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      expirationDate: map['expirationDate'] == null ? null : map['expirationDate'] as String,
      id: map['id'] as String,
      invitationId: map['invitationId'] as String,
      invitationStatus: map['invitationStatus'] as String,
      name: map['name'] as String,
      respondedAt: map['respondedAt'] as String,
      sentAt: map['sentAt'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      targetActiveDirectoryId: map['targetActiveDirectoryId'] == null ? null : map['targetActiveDirectoryId'] as String,
      targetEmail: map['targetEmail'] == null ? null : map['targetEmail'] as String,
      targetObjectId: map['targetObjectId'] == null ? null : map['targetObjectId'] as String,
      type: map['type'] as String,
      userEmail: map['userEmail'] as String,
      userName: map['userName'] as String,
    );
  }
}

