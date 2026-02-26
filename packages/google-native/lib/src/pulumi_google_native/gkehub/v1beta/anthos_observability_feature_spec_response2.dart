// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_membership_spec_response2.dart';

/// **Anthos Observability**: Spec
class AnthosObservabilityFeatureSpecResponse2 {
  /// Default membership spec for unconfigured memberships
  final AnthosObservabilityMembershipSpecResponse2 defaultMembershipSpec;

  AnthosObservabilityFeatureSpecResponse2({
    required this.defaultMembershipSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultMembershipSpec'] = defaultMembershipSpec.toMap();
    return map;
  }

  factory AnthosObservabilityFeatureSpecResponse2.fromMap(
      Map<String, dynamic> map) {
    return AnthosObservabilityFeatureSpecResponse2(
      defaultMembershipSpec: AnthosObservabilityMembershipSpecResponse2.fromMap(
          (map['defaultMembershipSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
