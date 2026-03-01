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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? email,
    pulumi.Output<String>? name,
    pulumi.Output<String>? servicePrincipal,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      email = pulumi.Input.asOptionalInput<String>(email),
      name = pulumi.Input.asOptionalInput<String>(name),
      servicePrincipal = pulumi.Input.asOptionalInput<String>(servicePrincipal);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      servicePrincipal: map['servicePrincipal'] == null ? null : pulumi.Output.create<String>(map['servicePrincipal'] as String),
    );
  }
}

