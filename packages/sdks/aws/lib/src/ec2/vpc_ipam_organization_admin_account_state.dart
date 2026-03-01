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
  VpcIpamOrganizationAdminAccountState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? delegatedAdminAccountId,
    pulumi.Output<String>? email,
    pulumi.Output<String>? name,
    pulumi.Output<String>? servicePrincipal,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      delegatedAdminAccountId = pulumi.Input.asOptionalInput<String>(delegatedAdminAccountId),
      email = pulumi.Input.asOptionalInput<String>(email),
      name = pulumi.Input.asOptionalInput<String>(name),
      servicePrincipal = pulumi.Input.asOptionalInput<String>(servicePrincipal);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      delegatedAdminAccountId: map['delegatedAdminAccountId'] == null ? null : pulumi.Output.create<String>(map['delegatedAdminAccountId'] as String),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      servicePrincipal: map['servicePrincipal'] == null ? null : pulumi.Output.create<String>(map['servicePrincipal'] as String),
    );
  }
}

