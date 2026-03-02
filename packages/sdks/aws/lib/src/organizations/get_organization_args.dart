// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_organization_get_organization_args_doc}
/// Arguments for getOrganization.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_organization_get_organization_args_doc}
class GetOrganizationArgs {
  /// Return (as attributes) only the results of the [`DescribeOrganization`](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DescribeOrganization.html) API to avoid [API limits](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#throttling-limits). When configured to `true` only the `arn`, `feature_set`, `master_account_arn`, `master_account_email` and `master_account_id` attributes will be returned. All others will be empty. Default: `false`.
  final pulumi.Input<bool>? returnOrganizationOnly;

  /// Creates a new [GetOrganizationArgs].
  /// [returnOrganizationOnly] Return (as attributes) only the results of the [`DescribeOrganization`](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DescribeOrganization.html) API to avoid [API limits](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#throttling-limits). When configured to `true` only the `arn`, `feature_set`, `master_account_arn`, `master_account_email` and `master_account_id` attributes will be returned. All others will be empty. Default: `false`.
  GetOrganizationArgs({
    this.returnOrganizationOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'returnOrganizationOnly': ?returnOrganizationOnly,
    };
  }

  factory GetOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationArgs(
      returnOrganizationOnly: map['returnOrganizationOnly'] == null ? null : (map['returnOrganizationOnly'] as bool).input(),
    );
  }
}

