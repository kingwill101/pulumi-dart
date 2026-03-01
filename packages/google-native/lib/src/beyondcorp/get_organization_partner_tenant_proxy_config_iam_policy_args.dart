// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_organization_partner_tenant_proxy_config_iam_policy_args_doc}
/// Arguments for getOrganizationPartnerTenantProxyConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_organization_partner_tenant_proxy_config_iam_policy_args_doc}
class GetOrganizationPartnerTenantProxyConfigIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;
  final pulumi.Input<String> proxyConfigId;

  /// Creates a new [GetOrganizationPartnerTenantProxyConfigIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  /// [proxyConfigId] Required.
  GetOrganizationPartnerTenantProxyConfigIamPolicyArgs({
    int? optionsRequestedPolicyVersion,
    required String organizationId,
    required String partnerTenantId,
    required String proxyConfigId,
  }) : optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       partnerTenantId = pulumi.Input.asInput<String>(partnerTenantId),
       proxyConfigId = pulumi.Input.asInput<String>(proxyConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'organizationId': organizationId,
      'partnerTenantId': partnerTenantId,
      'proxyConfigId': proxyConfigId,
    };
  }

  factory GetOrganizationPartnerTenantProxyConfigIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOrganizationPartnerTenantProxyConfigIamPolicyArgs(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      organizationId: map['organizationId'] as String,
      partnerTenantId: map['partnerTenantId'] as String,
      proxyConfigId: map['proxyConfigId'] as String,
    );
  }
}
