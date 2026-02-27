// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProxyConfig.
class GetProxyConfigArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;
  final pulumi.Input<String> proxyConfigId;

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
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      partnerTenantId: pulumi.Input.asInput<String>(map['partnerTenantId']),
      proxyConfigId: pulumi.Input.asInput<String>(map['proxyConfigId']),
    );
  }
}
