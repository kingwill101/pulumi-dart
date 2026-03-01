// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_membership_spec_gkehub_v1beta.dart';

/// **Anthos Observability**: Spec
class AnthosObservabilityFeatureSpecGkehubV1beta {
  /// Default membership spec for unconfigured memberships
  final AnthosObservabilityMembershipSpecGkehubV1beta? defaultMembershipSpec;

  /// Creates a new [AnthosObservabilityFeatureSpecGkehubV1beta].
  /// [defaultMembershipSpec] Default membership spec for unconfigured memberships
  AnthosObservabilityFeatureSpecGkehubV1beta({this.defaultMembershipSpec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMembershipSpec': ?defaultMembershipSpec == null
          ? null
          : defaultMembershipSpec!.toMap(),
    };
  }

  factory AnthosObservabilityFeatureSpecGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnthosObservabilityFeatureSpecGkehubV1beta(
      defaultMembershipSpec: map['defaultMembershipSpec'] == null
          ? null
          : AnthosObservabilityMembershipSpecGkehubV1beta.fromMap(
              (map['defaultMembershipSpec'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
