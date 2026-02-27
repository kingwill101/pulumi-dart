// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationPartnerTenantIamPolicy.
class GetOrganizationPartnerTenantIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

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
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      partnerTenantId: pulumi.Input.asInput<String>(map['partnerTenantId']),
    );
  }
}
