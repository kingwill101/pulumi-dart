// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_membership_spec.dart';

/// **Anthos Observability**: Spec
class AnthosObservabilityFeatureSpec {
  /// Default membership spec for unconfigured memberships
  final AnthosObservabilityMembershipSpec? defaultMembershipSpec;

  /// Creates a new [AnthosObservabilityFeatureSpec].
  /// [defaultMembershipSpec] Default membership spec for unconfigured memberships
  AnthosObservabilityFeatureSpec({
    this.defaultMembershipSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMembershipSpec': ?defaultMembershipSpec == null ? null : defaultMembershipSpec!.toMap(),
    };
  }

  factory AnthosObservabilityFeatureSpec.fromMap(Map<String, dynamic> map) {
    return AnthosObservabilityFeatureSpec(
      defaultMembershipSpec: map['defaultMembershipSpec'] == null ? null : AnthosObservabilityMembershipSpec.fromMap((map['defaultMembershipSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

