// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationAccount {
  /// ARN of the root.
  final pulumi.Input<String> arn;
  /// Email of the account.
  final pulumi.Input<String> email;
  /// Identifier of the root.
  final pulumi.Input<String> id;
  /// Method by which the account joined the organization.
  final pulumi.Input<String> joinedMethod;
  /// Date the account became a part of the organization.
  final pulumi.Input<String> joinedTimestamp;
  /// Name of the policy type.
  final pulumi.Input<String> name;
  /// State of the account.
  final pulumi.Input<String> state;
  /// Status of the policy type as it relates to the associated root.
  final pulumi.Input<String> status;

  /// Creates a new [GetOrganizationAccount].
  /// [arn] ARN of the root.
  /// [email] Email of the account.
  /// [id] Identifier of the root.
  /// [joinedMethod] Method by which the account joined the organization.
  /// [joinedTimestamp] Date the account became a part of the organization.
  /// [name] Name of the policy type.
  /// [state] State of the account.
  /// [status] Status of the policy type as it relates to the associated root.
  const GetOrganizationAccount({
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

  factory GetOrganizationAccount.fromMap(Map<String, dynamic> map) {
    return GetOrganizationAccount(
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

