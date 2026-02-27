// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationPartnerTenantProxyConfigIamPolicy.
class GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;
  final pulumi.Input<String> proxyConfigId;

  GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaArgs({
    this.optionsRequestedPolicyVersion,
    required this.organizationId,
    required this.partnerTenantId,
    required this.proxyConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['organizationId'] = organizationId;
    map['partnerTenantId'] = partnerTenantId;
    map['proxyConfigId'] = proxyConfigId;
    return map;
  }

  factory GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaArgs(
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      partnerTenantId: pulumi.Input.asInput<String>(map['partnerTenantId']),
      proxyConfigId: pulumi.Input.asInput<String>(map['proxyConfigId']),
    );
  }
}
