// ignore_for_file: unused_element, unnecessary_cast


class GetOrganizationalUnitChildAccountsAccount {
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
  /// The friendly name of the account.
  final String name;
  /// State of the account in the organization.
  final String state;
  /// (**Deprecated** use `state` instead) Status of the account in the organization.
  final String status;

  /// Creates a new [GetOrganizationalUnitChildAccountsAccount].
  /// [arn] The Amazon Resource Name (ARN) of the account.
  /// [email] The email address associated with the AWS account.
  /// [id] Parent identifier of the organizational units.
  /// [joinedMethod] Method by which the account joined the organization.
  /// [joinedTimestamp] Date the account became a part of the organization.
  /// [name] The friendly name of the account.
  /// [state] State of the account in the organization.
  /// [status] (**Deprecated** use `state` instead) Status of the account in the organization.
  GetOrganizationalUnitChildAccountsAccount({
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
    return <String, dynamic>{
      'arn': arn,
      'email': email,
      'id': id,
      'joinedMethod': joinedMethod,
      'joinedTimestamp': joinedTimestamp,
      'name': name,
      'state': state,
      'status': status,
    };
  }

  factory GetOrganizationalUnitChildAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitChildAccountsAccount(
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

