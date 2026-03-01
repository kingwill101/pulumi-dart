// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_organization_partner_tenant_iam_policy_args_doc}
/// Arguments for getOrganizationPartnerTenantIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_organization_partner_tenant_iam_policy_args_doc}
class GetOrganizationPartnerTenantIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

  /// Creates a new [GetOrganizationPartnerTenantIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  GetOrganizationPartnerTenantIamPolicyArgs({
    int? optionsRequestedPolicyVersion,
    required String organizationId,
    required String partnerTenantId,
  }) : optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       partnerTenantId = pulumi.Input.asInput<String>(partnerTenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'organizationId': organizationId,
      'partnerTenantId': partnerTenantId,
    };
  }

  factory GetOrganizationPartnerTenantIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOrganizationPartnerTenantIamPolicyArgs(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      organizationId: map['organizationId'] as String,
      partnerTenantId: map['partnerTenantId'] as String,
    );
  }
}
