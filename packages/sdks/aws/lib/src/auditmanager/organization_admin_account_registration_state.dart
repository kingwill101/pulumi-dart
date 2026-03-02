// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationAdminAccountRegistration resources.
class OrganizationAdminAccountRegistrationState {
  /// Identifier for the organization administrator account.
  final pulumi.Input<String>? adminAccountId;
  /// Identifier for the organization.
  final pulumi.Input<String>? organizationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationAdminAccountRegistrationState].
  /// [adminAccountId] Identifier for the organization administrator account.
  /// [organizationId] Identifier for the organization.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationAdminAccountRegistrationState({
    this.adminAccountId,
    this.organizationId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminAccountId': ?adminAccountId,
      'organizationId': ?organizationId,
      'region': ?region,
    };
  }

  factory OrganizationAdminAccountRegistrationState.fromMap(Map<String, dynamic> map) {
    return OrganizationAdminAccountRegistrationState(
      adminAccountId: map['adminAccountId'] == null ? null : (map['adminAccountId'] as String).input(),
      organizationId: map['organizationId'] == null ? null : (map['organizationId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

