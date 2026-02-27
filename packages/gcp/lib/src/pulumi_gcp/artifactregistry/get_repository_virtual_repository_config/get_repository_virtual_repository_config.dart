// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_repository_virtual_repository_config_upstream_policy/get_repository_virtual_repository_config_upstream_policy.dart';

class GetRepositoryVirtualRepositoryConfig {
  /// Policies that configure the upstream artifacts distributed by the Virtual
  /// Repository. Upstream policies cannot be set on a standard repository.
  final List<GetRepositoryVirtualRepositoryConfigUpstreamPolicy>
      upstreamPolicies;

  GetRepositoryVirtualRepositoryConfig({
    required this.upstreamPolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['upstreamPolicies'] = pulumi.Input.encodeList<
        GetRepositoryVirtualRepositoryConfigUpstreamPolicy,
        Map<String, dynamic>>(upstreamPolicies, (value) => value.toMap());
    return map;
  }

  factory GetRepositoryVirtualRepositoryConfig.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryVirtualRepositoryConfig(
      upstreamPolicies: pulumi.Input.decodeList<
              GetRepositoryVirtualRepositoryConfigUpstreamPolicy>(
          map['upstreamPolicies'],
          (value) => GetRepositoryVirtualRepositoryConfigUpstreamPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
