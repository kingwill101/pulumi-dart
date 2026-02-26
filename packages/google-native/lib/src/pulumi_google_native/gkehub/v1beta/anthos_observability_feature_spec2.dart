// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_membership_spec2.dart';

/// **Anthos Observability**: Spec
class AnthosObservabilityFeatureSpec2 {
  /// Default membership spec for unconfigured memberships
  final AnthosObservabilityMembershipSpec2? defaultMembershipSpec;

  AnthosObservabilityFeatureSpec2({
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

  factory AnthosObservabilityFeatureSpec2.fromMap(Map<String, dynamic> map) {
    return AnthosObservabilityFeatureSpec2(
      defaultMembershipSpec: map['defaultMembershipSpec'] == null
          ? null
          : AnthosObservabilityMembershipSpec2.fromMap(
              (map['defaultMembershipSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
