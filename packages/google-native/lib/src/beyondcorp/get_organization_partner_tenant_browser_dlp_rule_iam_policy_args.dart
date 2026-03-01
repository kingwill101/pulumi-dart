// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_organization_partner_tenant_browser_dlp_rule_iam_policy_args_doc}
/// Arguments for getOrganizationPartnerTenantBrowserDlpRuleIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_organization_partner_tenant_browser_dlp_rule_iam_policy_args_doc}
class GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs {
  final pulumi.Input<String> browserDlpRuleId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

  /// Creates a new [GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs].
  /// [browserDlpRuleId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs({
    required String browserDlpRuleId,
    int? optionsRequestedPolicyVersion,
    required String organizationId,
    required String partnerTenantId,
  }) : browserDlpRuleId = pulumi.Input.asInput<String>(browserDlpRuleId),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       partnerTenantId = pulumi.Input.asInput<String>(partnerTenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'browserDlpRuleId': browserDlpRuleId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'organizationId': organizationId,
      'partnerTenantId': partnerTenantId,
    };
  }

  factory GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs(
      browserDlpRuleId: map['browserDlpRuleId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      organizationId: map['organizationId'] as String,
      partnerTenantId: map['partnerTenantId'] as String,
    );
  }
}
