// ignore_for_file: unused_element, unnecessary_cast

class CollaborationMember {
  /// Account ID for the invited member.
  final String accountId;

  /// Display name for the invited member.
  final String displayName;

  /// List of abilities for the invited member. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-creatorMemberAbilities).
  final List<String> memberAbilities;

  /// For each member included in the collaboration an additional computed attribute of status is added. These values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_MemberSummary.html#API-Type-MemberSummary-status).
  final String? status;

  /// Creates a new [CollaborationMember].
  /// [accountId] Account ID for the invited member.
  /// [displayName] Display name for the invited member.
  /// [memberAbilities] List of abilities for the invited member. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-creatorMemberAbilities).
  /// [status] For each member included in the collaboration an additional computed attribute of status is added. These values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_MemberSummary.html#API-Type-MemberSummary-status).
  CollaborationMember({
    required this.accountId,
    required this.displayName,
    required this.memberAbilities,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['displayName'] = displayName;
    map['memberAbilities'] = memberAbilities;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory CollaborationMember.fromMap(Map<String, dynamic> map) {
    return CollaborationMember(
      accountId: map['accountId'] as String,
      displayName: map['displayName'] as String,
      memberAbilities: (map['memberAbilities'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
