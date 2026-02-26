// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationPartnerTenantProxyConfigIamPolicy.
class GetOrganizationPartnerTenantProxyConfigIamPolicyArgs {
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String> organizationId;
  final Input<String> partnerTenantId;
  final Input<String> proxyConfigId;

  GetOrganizationPartnerTenantProxyConfigIamPolicyArgs({
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

  factory GetOrganizationPartnerTenantProxyConfigIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationPartnerTenantProxyConfigIamPolicyArgs(
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      organizationId: Input.asInput<String>(map['organizationId']),
      partnerTenantId: Input.asInput<String>(map['partnerTenantId']),
      proxyConfigId: Input.asInput<String>(map['proxyConfigId']),
    );
  }
}
