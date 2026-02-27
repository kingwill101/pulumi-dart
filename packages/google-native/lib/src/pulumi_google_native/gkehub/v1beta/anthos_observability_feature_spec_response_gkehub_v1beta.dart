// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_membership_spec_response_gkehub_v1beta.dart';

/// **Anthos Observability**: Spec
class AnthosObservabilityFeatureSpecResponseGkehubV1beta {
  /// Default membership spec for unconfigured memberships
  final AnthosObservabilityMembershipSpecResponseGkehubV1beta
      defaultMembershipSpec;

  AnthosObservabilityFeatureSpecResponseGkehubV1beta({
    required this.defaultMembershipSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultMembershipSpec'] = defaultMembershipSpec.toMap();
    return map;
  }

  factory AnthosObservabilityFeatureSpecResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return AnthosObservabilityFeatureSpecResponseGkehubV1beta(
      defaultMembershipSpec:
          AnthosObservabilityMembershipSpecResponseGkehubV1beta.fromMap(
              (map['defaultMembershipSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
