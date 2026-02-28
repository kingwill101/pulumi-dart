// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_partner_tenant_args_doc}
/// Arguments for getPartnerTenant.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_partner_tenant_args_doc}
class GetPartnerTenantArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

  /// Creates a new [GetPartnerTenantArgs].
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  GetPartnerTenantArgs({
    required String organizationId,
    required String partnerTenantId,
  }) :
      organizationId = pulumi.Input.asInput<String>(organizationId),
      partnerTenantId = pulumi.Input.asInput<String>(partnerTenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'partnerTenantId': partnerTenantId,
    };
  }

  factory GetPartnerTenantArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerTenantArgs(
      organizationId: map['organizationId'] as String,
      partnerTenantId: map['partnerTenantId'] as String,
    );
  }
}

