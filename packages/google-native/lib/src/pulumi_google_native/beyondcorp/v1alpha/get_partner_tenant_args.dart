// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPartnerTenant.
class GetPartnerTenantArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

  GetPartnerTenantArgs({
    required this.organizationId,
    required this.partnerTenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['partnerTenantId'] = partnerTenantId;
    return map;
  }

  factory GetPartnerTenantArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerTenantArgs(
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      partnerTenantId: pulumi.Input.asInput<String>(map['partnerTenantId']),
    );
  }
}
