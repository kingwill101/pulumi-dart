// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccount.
class GetAccountResult {
  final String accountId;

  /// ARN of the organization.
  final String arn;

  /// Email address of the owner assigned to the new member account.
  final String email;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Method by which the account joined the organization.
  final String joinedMethod;

  /// Date the account became a part of the organization.
  final String joinedTimestamp;

  /// Friendly name for the member account.
  final String name;

  /// Parent Organizational Unit ID or Root ID for the account.
  final String parentId;

  /// State of the account in the organization.
  final String state;

  /// Map of tags for the resource.
  final Map<String, String> tags;

  GetAccountResult({
    required this.accountId,
    required this.arn,
    required this.email,
    required this.id,
    required this.joinedMethod,
    required this.joinedTimestamp,
    required this.name,
    required this.parentId,
    required this.state,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['arn'] = arn;
    map['email'] = email;
    map['id'] = id;
    map['joinedMethod'] = joinedMethod;
    map['joinedTimestamp'] = joinedTimestamp;
    map['name'] = name;
    map['parentId'] = parentId;
    map['state'] = state;
    map['tags'] = tags;
    return map;
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountId: map['accountId'] as String,
      arn: map['arn'] as String,
      email: map['email'] as String,
      id: map['id'] as String,
      joinedMethod: map['joinedMethod'] as String,
      joinedTimestamp: map['joinedTimestamp'] as String,
      name: map['name'] as String,
      parentId: map['parentId'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
