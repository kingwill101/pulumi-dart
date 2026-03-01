// ignore_for_file: unused_element, unnecessary_cast

class OrganizationNonMasterAccount {
  /// ARN of the root.
  final String? arn;

  /// Email of the account.
  final String? email;

  /// Identifier of the root.
  final String? id;

  /// Method by which the account joined the organization.
  final String? joinedMethod;

  /// Date the account became a part of the organization.
  final String? joinedTimestamp;

  /// Name of the policy type.
  final String? name;

  /// State of the account.
  final String? state;

  /// Status of the policy type as it relates to the associated root.
  final String? status;

  /// Creates a new [OrganizationNonMasterAccount].
  /// [arn] ARN of the root.
  /// [email] Email of the account.
  /// [id] Identifier of the root.
  /// [joinedMethod] Method by which the account joined the organization.
  /// [joinedTimestamp] Date the account became a part of the organization.
  /// [name] Name of the policy type.
  /// [state] State of the account.
  /// [status] Status of the policy type as it relates to the associated root.
  OrganizationNonMasterAccount({
    this.arn,
    this.email,
    this.id,
    this.joinedMethod,
    this.joinedTimestamp,
    this.name,
    this.state,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'email': ?email,
      'id': ?id,
      'joinedMethod': ?joinedMethod,
      'joinedTimestamp': ?joinedTimestamp,
      'name': ?name,
      'state': ?state,
      'status': ?status,
    };
  }

  factory OrganizationNonMasterAccount.fromMap(Map<String, dynamic> map) {
    return OrganizationNonMasterAccount(
      arn: map['arn'] == null ? null : map['arn'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      joinedMethod: map['joinedMethod'] == null
          ? null
          : map['joinedMethod'] as String,
      joinedTimestamp: map['joinedTimestamp'] == null
          ? null
          : map['joinedTimestamp'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
