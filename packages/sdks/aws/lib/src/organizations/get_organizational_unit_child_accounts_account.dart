// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationalUnitChildAccountsAccount {
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
  /// The friendly name of the account.
  final pulumi.Input<String> name;
  /// State of the account in the organization.
  final pulumi.Input<String> state;
  /// (**Deprecated** use `state` instead) Status of the account in the organization.
  final pulumi.Input<String> status;

  /// Creates a new [GetOrganizationalUnitChildAccountsAccount].
  /// [arn] The Amazon Resource Name (ARN) of the account.
  /// [email] The email address associated with the AWS account.
  /// [id] Parent identifier of the organizational units.
  /// [joinedMethod] Method by which the account joined the organization.
  /// [joinedTimestamp] Date the account became a part of the organization.
  /// [name] The friendly name of the account.
  /// [state] State of the account in the organization.
  /// [status] (**Deprecated** use `state` instead) Status of the account in the organization.
  const GetOrganizationalUnitChildAccountsAccount({
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
      arn: pulumi.Input.fromValue(map['arn'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      joinedMethod: pulumi.Input.fromValue(map['joinedMethod'] as String),
      joinedTimestamp: pulumi.Input.fromValue(map['joinedTimestamp'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
