// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationAccount {
  /// ARN of the root.
  final pulumi.Input<String>? arn;
  /// Email of the account.
  final pulumi.Input<String>? email;
  /// Identifier of the root.
  final pulumi.Input<String>? id;
  /// Method by which the account joined the organization.
  final pulumi.Input<String>? joinedMethod;
  /// Date the account became a part of the organization.
  final pulumi.Input<String>? joinedTimestamp;
  /// Name of the policy type.
  final pulumi.Input<String>? name;
  /// State of the account.
  final pulumi.Input<String>? state;
  /// Status of the policy type as it relates to the associated root.
  final pulumi.Input<String>? status;

  /// Creates a new [OrganizationAccount].
  /// [arn] ARN of the root.
  /// [email] Email of the account.
  /// [id] Identifier of the root.
  /// [joinedMethod] Method by which the account joined the organization.
  /// [joinedTimestamp] Date the account became a part of the organization.
  /// [name] Name of the policy type.
  /// [state] State of the account.
  /// [status] Status of the policy type as it relates to the associated root.
  OrganizationAccount({
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

  factory OrganizationAccount.fromMap(Map<String, dynamic> map) {
    return OrganizationAccount(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      email: map['email'] == null ? null : ((map['email'] as String).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      joinedMethod: map['joinedMethod'] == null ? null : ((map['joinedMethod'] as String).input()).input(),
      joinedTimestamp: map['joinedTimestamp'] == null ? null : ((map['joinedTimestamp'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}

