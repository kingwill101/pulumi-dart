// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationPartnerTenantIamPolicy.
class GetOrganizationPartnerTenantIamPolicyArgs {
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String> organizationId;
  final Input<String> partnerTenantId;

  GetOrganizationPartnerTenantIamPolicyArgs({
    this.optionsRequestedPolicyVersion,
    required this.organizationId,
    required this.partnerTenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['organizationId'] = organizationId;
    map['partnerTenantId'] = partnerTenantId;
    return map;
  }

  factory GetOrganizationPartnerTenantIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationPartnerTenantIamPolicyArgs(
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      organizationId: Input.asInput<String>(map['organizationId']),
      partnerTenantId: Input.asInput<String>(map['partnerTenantId']),
    );
  }
}
