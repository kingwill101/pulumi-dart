// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RoleMembership resources.
class RoleMembershipState {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Name of the group to be added to the role.
  final pulumi.Input<String>? memberName;
  /// Name of the namespace. Defaults to `default`.
  final pulumi.Input<String>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Role to add the group to. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? role;

  /// Creates a new [RoleMembershipState].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [memberName] Name of the group to be added to the role.
  /// [namespace] Name of the namespace. Defaults to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] Role to add the group to. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  RoleMembershipState({
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? memberName,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? region,
    pulumi.Output<String>? role,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      memberName = pulumi.Input.asOptionalInput<String>(memberName),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'memberName': ?memberName,
      'namespace': ?namespace,
      'region': ?region,
      'role': ?role,
    };
  }

  factory RoleMembershipState.fromMap(Map<String, dynamic> map) {
    return RoleMembershipState(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      memberName: map['memberName'] == null ? null : pulumi.Output.create<String>(map['memberName'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

