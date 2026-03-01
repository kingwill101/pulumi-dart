// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'legacy_disallowed_condition_response.dart';

/// The legacy policy.
class ResourceTypeRegistrationPropertiesLegacyPolicyResponse {
  final List<LegacyDisallowedConditionResponse>? disallowedConditions;
  final List<String>? disallowedLegacyOperations;

  /// Creates a new [ResourceTypeRegistrationPropertiesLegacyPolicyResponse].
  /// [disallowedConditions] Optional.
  /// [disallowedLegacyOperations] Optional.
  ResourceTypeRegistrationPropertiesLegacyPolicyResponse({
    this.disallowedConditions,
    this.disallowedLegacyOperations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disallowedConditions': ?disallowedConditions == null ? null : pulumi.Input.encodeList<LegacyDisallowedConditionResponse, Map<String, dynamic>>(disallowedConditions!, (value) => value.toMap()),
      'disallowedLegacyOperations': ?disallowedLegacyOperations,
    };
  }

  factory ResourceTypeRegistrationPropertiesLegacyPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesLegacyPolicyResponse(
      disallowedConditions: map['disallowedConditions'] == null ? null : pulumi.Input.decodeList<LegacyDisallowedConditionResponse>(map['disallowedConditions'], (value) => LegacyDisallowedConditionResponse.fromMap((value as Map).cast<String, dynamic>())),
      disallowedLegacyOperations: map['disallowedLegacyOperations'] == null ? null : (map['disallowedLegacyOperations'] as List).cast<String>(),
    );
  }
}

