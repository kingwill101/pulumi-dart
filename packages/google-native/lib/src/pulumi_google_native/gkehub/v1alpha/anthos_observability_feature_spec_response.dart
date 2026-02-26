// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_membership_spec_response.dart';

/// **Anthos Observability**: Spec
class AnthosObservabilityFeatureSpecResponse {
  /// Default membership spec for unconfigured memberships
  final AnthosObservabilityMembershipSpecResponse defaultMembershipSpec;

  AnthosObservabilityFeatureSpecResponse({
    required this.defaultMembershipSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultMembershipSpec'] = defaultMembershipSpec.toMap();
    return map;
  }

  factory AnthosObservabilityFeatureSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return AnthosObservabilityFeatureSpecResponse(
      defaultMembershipSpec: AnthosObservabilityMembershipSpecResponse.fromMap(
          (map['defaultMembershipSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
