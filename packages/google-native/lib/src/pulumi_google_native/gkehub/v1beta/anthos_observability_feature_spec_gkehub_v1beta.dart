// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_membership_spec_gkehub_v1beta.dart';

/// **Anthos Observability**: Spec
class AnthosObservabilityFeatureSpecGkehubV1beta {
  /// Default membership spec for unconfigured memberships
  final AnthosObservabilityMembershipSpecGkehubV1beta? defaultMembershipSpec;

  AnthosObservabilityFeatureSpecGkehubV1beta({
    this.defaultMembershipSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultMembershipSpecValue = defaultMembershipSpec;
    if (defaultMembershipSpecValue != null) {
      map['defaultMembershipSpec'] = defaultMembershipSpecValue.toMap();
    }
    return map;
  }

  factory AnthosObservabilityFeatureSpecGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return AnthosObservabilityFeatureSpecGkehubV1beta(
      defaultMembershipSpec: map['defaultMembershipSpec'] == null
          ? null
          : AnthosObservabilityMembershipSpecGkehubV1beta.fromMap(
              (map['defaultMembershipSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
