// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationPartnerTenantBrowserDlpRuleIamPolicy.
class GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs {
  final Input<String> browserDlpRuleId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String> organizationId;
  final Input<String> partnerTenantId;

  GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs({
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

  factory GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs(
      browserDlpRuleId: Input.asInput<String>(map['browserDlpRuleId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      organizationId: Input.asInput<String>(map['organizationId']),
      partnerTenantId: Input.asInput<String>(map['partnerTenantId']),
    );
  }
}
