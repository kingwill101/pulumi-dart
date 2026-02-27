// ignore_for_file: unused_element, unnecessary_cast

class GetOrganizationalUnitDescendantAccountsAccount {
  /// The Amazon Resource Name (ARN) of the account.
  final String arn;

  /// The email address associated with the AWS account.
  final String email;

  /// Parent identifier of the organizational units.
  final String id;

  /// Method by which the account joined the organization.
  final String joinedMethod;

  /// Date the account became a part of the organization.
  final String joinedTimestamp;

  /// Friendly name of the account.
  final String name;

  /// State of the account in the organization.
  final String state;

  /// (**Deprecated** use `state` instead) Status of the account in the organization.
  final String status;

  GetOrganizationalUnitDescendantAccountsAccount({
    required this.arn,
    required this.email,
    required this.id,
    required this.joinedMethod,
    required this.joinedTimestamp,
    required this.name,
    required this.state,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['email'] = email;
    map['id'] = id;
    map['joinedMethod'] = joinedMethod;
    map['joinedTimestamp'] = joinedTimestamp;
    map['name'] = name;
    map['state'] = state;
    map['status'] = status;
    return map;
  }

  factory GetOrganizationalUnitDescendantAccountsAccount.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationalUnitDescendantAccountsAccount(
      arn: map['arn'] as String,
      email: map['email'] as String,
      id: map['id'] as String,
      joinedMethod: map['joinedMethod'] as String,
      joinedTimestamp: map['joinedTimestamp'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      status: map['status'] as String,
    );
  }
}
