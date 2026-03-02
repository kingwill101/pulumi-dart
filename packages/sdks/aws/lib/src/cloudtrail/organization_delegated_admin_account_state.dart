// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationDelegatedAdminAccount resources.
class OrganizationDelegatedAdminAccountState {
  /// An organization member account ID that you want to designate as a delegated administrator.
  final pulumi.Input<String>? accountId;
  /// The Amazon Resource Name (ARN) of the delegated administrator's account.
  final pulumi.Input<String>? arn;
  /// The email address that is associated with the delegated administrator's AWS account.
  final pulumi.Input<String>? email;
  /// The friendly name of the delegated administrator's account.
  final pulumi.Input<String>? name;
  /// The AWS CloudTrail service principal name.
  final pulumi.Input<String>? servicePrincipal;

  /// Creates a new [OrganizationDelegatedAdminAccountState].
  /// [accountId] An organization member account ID that you want to designate as a delegated administrator.
  /// [arn] The Amazon Resource Name (ARN) of the delegated administrator's account.
  /// [email] The email address that is associated with the delegated administrator's AWS account.
  /// [name] The friendly name of the delegated administrator's account.
  /// [servicePrincipal] The AWS CloudTrail service principal name.
  OrganizationDelegatedAdminAccountState({
    this.accountId,
    this.arn,
    this.email,
    this.name,
    this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': ?arn,
      'email': ?email,
      'name': ?name,
      'servicePrincipal': ?servicePrincipal,
    };
  }

  factory OrganizationDelegatedAdminAccountState.fromMap(Map<String, dynamic> map) {
    return OrganizationDelegatedAdminAccountState(
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      email: map['email'] == null ? null : ((map['email'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      servicePrincipal: map['servicePrincipal'] == null ? null : ((map['servicePrincipal'] as String).input()).input(),
    );
  }
}

