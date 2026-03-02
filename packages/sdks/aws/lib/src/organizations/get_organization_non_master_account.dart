// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationNonMasterAccount {
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

  /// Creates a new [GetOrganizationNonMasterAccount].
  /// [arn] ARN of the root.
  /// [email] Email of the account.
  /// [id] Identifier of the root.
  /// [joinedMethod] Method by which the account joined the organization.
  /// [joinedTimestamp] Date the account became a part of the organization.
  /// [name] Name of the policy type.
  /// [state] State of the account.
  /// [status] Status of the policy type as it relates to the associated root.
  GetOrganizationNonMasterAccount({
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

  factory GetOrganizationNonMasterAccount.fromMap(Map<String, dynamic> map) {
    return GetOrganizationNonMasterAccount(
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

