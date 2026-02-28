// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_virtual_repository_config_upstream_policy.dart';

class RepositoryVirtualRepositoryConfig {
  /// Policies that configure the upstream artifacts distributed by the Virtual
  /// Repository. Upstream policies cannot be set on a standard repository.
  /// Structure is documented below.
  final List<RepositoryVirtualRepositoryConfigUpstreamPolicy>? upstreamPolicies;

  /// Creates a new [RepositoryVirtualRepositoryConfig].
  /// [upstreamPolicies] Policies that configure the upstream artifacts distributed by the Virtual
  RepositoryVirtualRepositoryConfig({
    this.upstreamPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upstreamPolicies': ?upstreamPolicies == null ? null : pulumi.Input.encodeList<RepositoryVirtualRepositoryConfigUpstreamPolicy, Map<String, dynamic>>(upstreamPolicies!, (value) => value.toMap()),
    };
  }

  factory RepositoryVirtualRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryVirtualRepositoryConfig(
      upstreamPolicies: map['upstreamPolicies'] == null ? null : pulumi.Input.decodeList<RepositoryVirtualRepositoryConfigUpstreamPolicy>(map['upstreamPolicies'], (value) => RepositoryVirtualRepositoryConfigUpstreamPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

