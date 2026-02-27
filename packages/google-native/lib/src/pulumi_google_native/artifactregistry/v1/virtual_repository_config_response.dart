// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'upstream_policy_response.dart';

/// Virtual repository configuration.
class VirtualRepositoryConfigResponse {
  /// Policies that configure the upstream artifacts distributed by the Virtual Repository. Upstream policies cannot be set on a standard repository.
  final List<UpstreamPolicyResponse> upstreamPolicies;

  VirtualRepositoryConfigResponse({
    required this.upstreamPolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['upstreamPolicies'] =
        Input.encodeList<UpstreamPolicyResponse, Map<String, dynamic>>(
            upstreamPolicies, (value) => value.toMap());
    return map;
  }

  factory VirtualRepositoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return VirtualRepositoryConfigResponse(
      upstreamPolicies: Input.decodeList<UpstreamPolicyResponse>(
          map['upstreamPolicies'],
          (value) => UpstreamPolicyResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
