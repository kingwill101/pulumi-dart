// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPartnerTenant.
class GetPartnerTenantArgs {
  final Input<String> organizationId;
  final Input<String> partnerTenantId;

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
      organizationId: Input.asInput<String>(map['organizationId']),
      partnerTenantId: Input.asInput<String>(map['partnerTenantId']),
    );
  }
}
