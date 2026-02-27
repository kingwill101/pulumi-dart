// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upstream_policy.dart';

/// Virtual repository configuration.
class VirtualRepositoryConfig {
  /// Policies that configure the upstream artifacts distributed by the Virtual Repository. Upstream policies cannot be set on a standard repository.
  final List<UpstreamPolicy>? upstreamPolicies;

  VirtualRepositoryConfig({
    this.upstreamPolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final upstreamPoliciesValue = upstreamPolicies;
    if (upstreamPoliciesValue != null) {
      map['upstreamPolicies'] =
          pulumi.Input.encodeList<UpstreamPolicy, Map<String, dynamic>>(
              upstreamPoliciesValue, (value) => value.toMap());
    }
    return map;
  }

  factory VirtualRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return VirtualRepositoryConfig(
      upstreamPolicies: map['upstreamPolicies'] == null
          ? null
          : pulumi.Input.decodeList<UpstreamPolicy>(
              map['upstreamPolicies'],
              (value) => UpstreamPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
