// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_membership_spec_response.dart';

/// **Anthos Observability**: Spec
class AnthosObservabilityFeatureSpecResponse {
  /// Default membership spec for unconfigured memberships
  final AnthosObservabilityMembershipSpecResponse defaultMembershipSpec;

  /// Creates a new [AnthosObservabilityFeatureSpecResponse].
  /// [defaultMembershipSpec] Default membership spec for unconfigured memberships
  AnthosObservabilityFeatureSpecResponse({
    required this.defaultMembershipSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMembershipSpec': defaultMembershipSpec.toMap(),
    };
  }

  factory AnthosObservabilityFeatureSpecResponse.fromMap(Map<String, dynamic> map) {
    return AnthosObservabilityFeatureSpecResponse(
      defaultMembershipSpec: AnthosObservabilityMembershipSpecResponse.fromMap((map['defaultMembershipSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

