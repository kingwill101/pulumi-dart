// ignore_for_file: unused_element, unnecessary_cast

class GetDelegatedAdministratorsDelegatedAdministrator {
  /// The ARN of the delegated administrator's account.
  final String arn;

  /// The date when the account was made a delegated administrator.
  final String delegationEnabledDate;

  /// The email address that is associated with the delegated administrator's AWS account.
  final String email;

  /// The unique identifier (ID) of the delegated administrator's account.
  final String id;

  /// The method by which the delegated administrator's account joined the organization.
  final String joinedMethod;

  /// The date when the delegated administrator's account became a part of the organization.
  final String joinedTimestamp;

  /// The friendly name of the delegated administrator's account.
  final String name;

  /// The status of the delegated administrator's account in the organization.
  final String status;

  /// Creates a new [GetDelegatedAdministratorsDelegatedAdministrator].
  /// [arn] The ARN of the delegated administrator's account.
  /// [delegationEnabledDate] The date when the account was made a delegated administrator.
  /// [email] The email address that is associated with the delegated administrator's AWS account.
  /// [id] The unique identifier (ID) of the delegated administrator's account.
  /// [joinedMethod] The method by which the delegated administrator's account joined the organization.
  /// [joinedTimestamp] The date when the delegated administrator's account became a part of the organization.
  /// [name] The friendly name of the delegated administrator's account.
  /// [status] The status of the delegated administrator's account in the organization.
  GetDelegatedAdministratorsDelegatedAdministrator({
    required this.arn,
    required this.delegationEnabledDate,
    required this.email,
    required this.id,
    required this.joinedMethod,
    required this.joinedTimestamp,
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'delegationEnabledDate': delegationEnabledDate,
      'email': email,
      'id': id,
      'joinedMethod': joinedMethod,
      'joinedTimestamp': joinedTimestamp,
      'name': name,
      'status': status,
    };
  }

  factory GetDelegatedAdministratorsDelegatedAdministrator.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDelegatedAdministratorsDelegatedAdministrator(
      arn: map['arn'] as String,
      delegationEnabledDate: map['delegationEnabledDate'] as String,
      email: map['email'] as String,
      id: map['id'] as String,
      joinedMethod: map['joinedMethod'] as String,
      joinedTimestamp: map['joinedTimestamp'] as String,
      name: map['name'] as String,
      status: map['status'] as String,
    );
  }
}
