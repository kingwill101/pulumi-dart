// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CollaborationMember {
  /// Account ID for the invited member.
  final pulumi.Input<String> accountId;
  /// Display name for the invited member.
  final pulumi.Input<String> displayName;
  /// List of abilities for the invited member. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-creatorMemberAbilities).
  final pulumi.Input<List<String>> memberAbilities;
  /// For each member included in the collaboration an additional computed attribute of status is added. These values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_MemberSummary.html#API-Type-MemberSummary-status).
  final pulumi.Input<String>? status;

  /// Creates a new [CollaborationMember].
  /// [accountId] Account ID for the invited member.
  /// [displayName] Display name for the invited member.
  /// [memberAbilities] List of abilities for the invited member. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-creatorMemberAbilities).
  /// [status] For each member included in the collaboration an additional computed attribute of status is added. These values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_MemberSummary.html#API-Type-MemberSummary-status).
  const CollaborationMember({
    required this.accountId,
    required this.displayName,
    required this.memberAbilities,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'displayName': displayName,
      'memberAbilities': memberAbilities,
      'status': ?status,
    };
  }

  factory CollaborationMember.fromMap(Map<String, dynamic> map) {
    return CollaborationMember(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      memberAbilities: pulumi.Input.fromValue((map['memberAbilities'] as List).cast<String>()),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

