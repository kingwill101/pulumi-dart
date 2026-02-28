// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_proxy_config_args_doc}
/// Arguments for getProxyConfig.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_proxy_config_args_doc}
class GetProxyConfigArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;
  final pulumi.Input<String> proxyConfigId;

  /// Creates a new [GetProxyConfigArgs].
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  /// [proxyConfigId] Required.
  GetProxyConfigArgs({
    required String organizationId,
    required String partnerTenantId,
    required String proxyConfigId,
  })  : organizationId = pulumi.Input.asInput<String>(organizationId),
        partnerTenantId = pulumi.Input.asInput<String>(partnerTenantId),
        proxyConfigId = pulumi.Input.asInput<String>(proxyConfigId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['partnerTenantId'] = partnerTenantId;
    map['proxyConfigId'] = proxyConfigId;
    return map;
  }

  factory GetProxyConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetProxyConfigArgs(
      organizationId: map['organizationId'] as String,
      partnerTenantId: map['partnerTenantId'] as String,
      proxyConfigId: map['proxyConfigId'] as String,
    );
  }
}
