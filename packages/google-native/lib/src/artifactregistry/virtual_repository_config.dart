// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upstream_policy.dart';

/// Virtual repository configuration.
class VirtualRepositoryConfig {
  /// Policies that configure the upstream artifacts distributed by the Virtual Repository. Upstream policies cannot be set on a standard repository.
  final List<UpstreamPolicy>? upstreamPolicies;

  /// Creates a new [VirtualRepositoryConfig].
  /// [upstreamPolicies] Policies that configure the upstream artifacts distributed by the Virtual Repository. Upstream policies cannot be set on a standard repository.
  VirtualRepositoryConfig({this.upstreamPolicies});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upstreamPolicies': ?upstreamPolicies == null
          ? null
          : pulumi.Input.encodeList<UpstreamPolicy, Map<String, dynamic>>(
              upstreamPolicies!,
              (value) => value.toMap(),
            ),
    };
  }

  factory VirtualRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return VirtualRepositoryConfig(
      upstreamPolicies: map['upstreamPolicies'] == null
          ? null
          : pulumi.Input.decodeList<UpstreamPolicy>(
              map['upstreamPolicies'],
              (value) => UpstreamPolicy.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
