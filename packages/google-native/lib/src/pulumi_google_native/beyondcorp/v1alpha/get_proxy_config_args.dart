// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getProxyConfig.
class GetProxyConfigArgs {
  final Input<String> organizationId;
  final Input<String> partnerTenantId;
  final Input<String> proxyConfigId;

  GetProxyConfigArgs({
    required this.organizationId,
    required this.partnerTenantId,
    required this.proxyConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['partnerTenantId'] = partnerTenantId;
    map['proxyConfigId'] = proxyConfigId;
    return map;
  }

  factory GetProxyConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetProxyConfigArgs(
      organizationId: Input.asInput<String>(map['organizationId']),
      partnerTenantId: Input.asInput<String>(map['partnerTenantId']),
      proxyConfigId: Input.asInput<String>(map['proxyConfigId']),
    );
  }
}
