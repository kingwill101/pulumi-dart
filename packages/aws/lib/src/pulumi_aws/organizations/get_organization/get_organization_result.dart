// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_organization_account/get_organization_account.dart';
import '../get_organization_non_master_account/get_organization_non_master_account.dart';
import '../get_organization_root/get_organization_root.dart';

/// Result data returned by getOrganization.
class GetOrganizationResult {
  /// List of organization accounts including the master account. For a list excluding the master account, see the `non_master_accounts` attribute. All elements have these attributes:
  final List<GetOrganizationAccount> accounts;

  /// ARN of the root.
  final String arn;

  /// A list of AWS service principal names that have integration enabled with your organization. Organization must have `feature_set` set to `ALL`. For additional information, see the [AWS Organizations User Guide](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html).
  final List<String> awsServiceAccessPrincipals;

  /// A list of Organizations policy types that are enabled in the Organization Root. Organization must have `feature_set` set to `ALL`. For additional information about valid policy types (e.g., `SERVICE_CONTROL_POLICY`), see the [AWS Organizations API Reference](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnablePolicyType.html).
  final List<String> enabledPolicyTypes;

  /// FeatureSet of the organization.
  final String featureSet;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ARN of the account that is designated as the master account for the organization.
  final String masterAccountArn;

  /// The email address that is associated with the AWS account that is designated as the master account for the organization.
  final String masterAccountEmail;

  /// Unique identifier (ID) of the master account of an organization.
  final String masterAccountId;

  /// Name of the master account of an organization.
  final String masterAccountName;

  /// List of organization accounts excluding the master account. For a list including the master account, see the `accounts` attribute. All elements have these attributes:
  final List<GetOrganizationNonMasterAccount> nonMasterAccounts;
  final bool? returnOrganizationOnly;

  /// List of organization roots. All elements have these attributes:
  final List<GetOrganizationRoot> roots;

  GetOrganizationResult({
    required this.accounts,
    required this.arn,
    required this.awsServiceAccessPrincipals,
    required this.enabledPolicyTypes,
    required this.featureSet,
    required this.id,
    required this.masterAccountArn,
    required this.masterAccountEmail,
    required this.masterAccountId,
    required this.masterAccountName,
    required this.nonMasterAccounts,
    this.returnOrganizationOnly,
    required this.roots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accounts'] =
        Input.encodeList<GetOrganizationAccount, Map<String, dynamic>>(
            accounts, (value) => value.toMap());
    map['arn'] = arn;
    map['awsServiceAccessPrincipals'] = awsServiceAccessPrincipals;
    map['enabledPolicyTypes'] = enabledPolicyTypes;
    map['featureSet'] = featureSet;
    map['id'] = id;
    map['masterAccountArn'] = masterAccountArn;
    map['masterAccountEmail'] = masterAccountEmail;
    map['masterAccountId'] = masterAccountId;
    map['masterAccountName'] = masterAccountName;
    map['nonMasterAccounts'] =
        Input.encodeList<GetOrganizationNonMasterAccount, Map<String, dynamic>>(
            nonMasterAccounts, (value) => value.toMap());
    final returnOrganizationOnlyValue = returnOrganizationOnly;
    if (returnOrganizationOnlyValue != null) {
      map['returnOrganizationOnly'] = returnOrganizationOnlyValue;
    }
    map['roots'] = Input.encodeList<GetOrganizationRoot, Map<String, dynamic>>(
        roots, (value) => value.toMap());
    return map;
  }

  factory GetOrganizationResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationResult(
      accounts: Input.decodeList<GetOrganizationAccount>(
          map['accounts'],
          (value) => GetOrganizationAccount.fromMap(
              (value as Map).cast<String, dynamic>())),
      arn: map['arn'] as String,
      awsServiceAccessPrincipals:
          (map['awsServiceAccessPrincipals'] as List).cast<String>(),
      enabledPolicyTypes: (map['enabledPolicyTypes'] as List).cast<String>(),
      featureSet: map['featureSet'] as String,
      id: map['id'] as String,
      masterAccountArn: map['masterAccountArn'] as String,
      masterAccountEmail: map['masterAccountEmail'] as String,
      masterAccountId: map['masterAccountId'] as String,
      masterAccountName: map['masterAccountName'] as String,
      nonMasterAccounts: Input.decodeList<GetOrganizationNonMasterAccount>(
          map['nonMasterAccounts'],
          (value) => GetOrganizationNonMasterAccount.fromMap(
              (value as Map).cast<String, dynamic>())),
      returnOrganizationOnly: map['returnOrganizationOnly'] == null
          ? null
          : map['returnOrganizationOnly'] as bool,
      roots: Input.decodeList<GetOrganizationRoot>(
          map['roots'],
          (value) => GetOrganizationRoot.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
