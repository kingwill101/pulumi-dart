// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationalUnitDescendantAccountsAccount {
  /// The Amazon Resource Name (ARN) of the account.
  final pulumi.Input<String> arn;
  /// The email address associated with the AWS account.
  final pulumi.Input<String> email;
  /// Parent identifier of the organizational units.
  final pulumi.Input<String> id;
  /// Method by which the account joined the organization.
  final pulumi.Input<String> joinedMethod;
  /// Date the account became a part of the organization.
  final pulumi.Input<String> joinedTimestamp;
  /// Friendly name of the account.
  final pulumi.Input<String> name;
  /// State of the account in the organization.
  final pulumi.Input<String> state;
  /// (**Deprecated** use `state` instead) Status of the account in the organization.
  final pulumi.Input<String> status;

  /// Creates a new [GetOrganizationalUnitDescendantAccountsAccount].
  /// [arn] The Amazon Resource Name (ARN) of the account.
  /// [email] The email address associated with the AWS account.
  /// [id] Parent identifier of the organizational units.
  /// [joinedMethod] Method by which the account joined the organization.
  /// [joinedTimestamp] Date the account became a part of the organization.
  /// [name] Friendly name of the account.
  /// [state] State of the account in the organization.
  /// [status] (**Deprecated** use `state` instead) Status of the account in the organization.
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

  factory GetOrganizationalUnitDescendantAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitDescendantAccountsAccount(
      arn: (map['arn'] as String).input(),
      email: (map['email'] as String).input(),
      id: (map['id'] as String).input(),
      joinedMethod: (map['joinedMethod'] as String).input(),
      joinedTimestamp: (map['joinedTimestamp'] as String).input(),
      name: (map['name'] as String).input(),
      state: (map['state'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

