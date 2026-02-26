// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_virtual_repository_config_upstream_policy/repository_virtual_repository_config_upstream_policy.dart';

class RepositoryVirtualRepositoryConfig {
  /// Policies that configure the upstream artifacts distributed by the Virtual
  /// Repository. Upstream policies cannot be set on a standard repository.
  /// Structure is documented below.
  final List<RepositoryVirtualRepositoryConfigUpstreamPolicy>? upstreamPolicies;

  RepositoryVirtualRepositoryConfig({
    this.upstreamPolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final upstreamPoliciesValue = upstreamPolicies;
    if (upstreamPoliciesValue != null) {
      map['upstreamPolicies'] = Input.encodeList<
              RepositoryVirtualRepositoryConfigUpstreamPolicy,
              Map<String, dynamic>>(
          upstreamPoliciesValue, (value) => value.toMap());
    }
    return map;
  }

  factory RepositoryVirtualRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryVirtualRepositoryConfig(
      upstreamPolicies: map['upstreamPolicies'] == null
          ? null
          : Input.decodeList<RepositoryVirtualRepositoryConfigUpstreamPolicy>(
              map['upstreamPolicies'],
              (value) =>
                  RepositoryVirtualRepositoryConfigUpstreamPolicy.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
