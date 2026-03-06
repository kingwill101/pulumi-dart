// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcIpamOrganizationAdminAccount resources.
class VpcIpamOrganizationAdminAccountState {
  /// The Organizations ARN for the delegate account.
  final pulumi.Input<String>? arn;
  final pulumi.Input<String>? delegatedAdminAccountId;
  /// The Organizations email for the delegate account.
  final pulumi.Input<String>? email;
  /// The Organizations name for the delegate account.
  final pulumi.Input<String>? name;
  /// The AWS service principal.
  final pulumi.Input<String>? servicePrincipal;

  /// Creates a new [VpcIpamOrganizationAdminAccountState].
  /// [arn] The Organizations ARN for the delegate account.
  /// [delegatedAdminAccountId] Optional.
  /// [email] The Organizations email for the delegate account.
  /// [name] The Organizations name for the delegate account.
  /// [servicePrincipal] The AWS service principal.
  const VpcIpamOrganizationAdminAccountState({
    this.arn,
    this.delegatedAdminAccountId,
    this.email,
    this.name,
    this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'delegatedAdminAccountId': ?delegatedAdminAccountId,
      'email': ?email,
      'name': ?name,
      'servicePrincipal': ?servicePrincipal,
    };
  }

  factory VpcIpamOrganizationAdminAccountState.fromMap(Map<String, dynamic> map) {
    return VpcIpamOrganizationAdminAccountState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      delegatedAdminAccountId: (() { final guardedValue = map['delegatedAdminAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

