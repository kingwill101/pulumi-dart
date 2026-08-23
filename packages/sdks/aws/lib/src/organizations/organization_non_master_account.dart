// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationNonMasterAccount {
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

  /// Creates a new [OrganizationNonMasterAccount].
  /// [arn] ARN of the root.
  /// [email] Email of the account.
  /// [id] Identifier of the root.
  /// [joinedMethod] Method by which the account joined the organization.
  /// [joinedTimestamp] Date the account became a part of the organization.
  /// [name] Name of the policy type.
  /// [state] State of the account.
  /// [status] Status of the policy type as it relates to the associated root.
  const OrganizationNonMasterAccount({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      joinedMethod: (() { final guardedValue = map['joinedMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      joinedTimestamp: (() { final guardedValue = map['joinedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
