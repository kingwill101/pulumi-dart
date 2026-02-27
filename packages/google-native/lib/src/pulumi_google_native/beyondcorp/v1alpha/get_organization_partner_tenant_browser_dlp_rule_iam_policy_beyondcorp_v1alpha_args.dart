// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationPartnerTenantBrowserDlpRuleIamPolicy.
class GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyBeyondcorpV1alphaArgs {
  final pulumi.Input<String> browserDlpRuleId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

  GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyBeyondcorpV1alphaArgs({
    required this.browserDlpRuleId,
    this.optionsRequestedPolicyVersion,
    required this.organizationId,
    required this.partnerTenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['browserDlpRuleId'] = browserDlpRuleId;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['organizationId'] = organizationId;
    map['partnerTenantId'] = partnerTenantId;
    return map;
  }

  factory GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyBeyondcorpV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyBeyondcorpV1alphaArgs(
      browserDlpRuleId: pulumi.Input.asInput<String>(map['browserDlpRuleId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      partnerTenantId: pulumi.Input.asInput<String>(map['partnerTenantId']),
    );
  }
}
