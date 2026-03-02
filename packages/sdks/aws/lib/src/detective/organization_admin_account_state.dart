// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationAdminAccount resources.
class OrganizationAdminAccountState {
  /// AWS account identifier to designate as a delegated administrator for Detective.
  final pulumi.Input<String>? accountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationAdminAccountState].
  /// [accountId] AWS account identifier to designate as a delegated administrator for Detective.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationAdminAccountState({
    this.accountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'region': ?region,
    };
  }

  factory OrganizationAdminAccountState.fromMap(Map<String, dynamic> map) {
    return OrganizationAdminAccountState(
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

