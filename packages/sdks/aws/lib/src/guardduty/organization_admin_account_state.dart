// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationAdminAccount resources.
class OrganizationAdminAccountState {
  /// AWS account identifier to designate as a delegated administrator for GuardDuty.
  final pulumi.Input<String>? adminAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationAdminAccountState].
  /// [adminAccountId] AWS account identifier to designate as a delegated administrator for GuardDuty.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationAdminAccountState({
    pulumi.Output<String>? adminAccountId,
    pulumi.Output<String>? region,
  }) :
      adminAccountId = pulumi.Input.asOptionalInput<String>(adminAccountId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminAccountId': ?adminAccountId,
      'region': ?region,
    };
  }

  factory OrganizationAdminAccountState.fromMap(Map<String, dynamic> map) {
    return OrganizationAdminAccountState(
      adminAccountId: map['adminAccountId'] == null ? null : pulumi.Output.create<String>(map['adminAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

