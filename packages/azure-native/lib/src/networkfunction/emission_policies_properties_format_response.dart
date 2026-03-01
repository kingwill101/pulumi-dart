// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'emission_policy_destination_response.dart';

/// Emission policy properties.
class EmissionPoliciesPropertiesFormatResponse {
  /// Emission policy destinations.
  final List<EmissionPolicyDestinationResponse>? emissionDestinations;
  /// Emission format type.
  final String? emissionType;

  /// Creates a new [EmissionPoliciesPropertiesFormatResponse].
  /// [emissionDestinations] Emission policy destinations.
  /// [emissionType] Emission format type.
  EmissionPoliciesPropertiesFormatResponse({
    this.emissionDestinations,
    this.emissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emissionDestinations': ?emissionDestinations == null ? null : pulumi.Input.encodeList<EmissionPolicyDestinationResponse, Map<String, dynamic>>(emissionDestinations!, (value) => value.toMap()),
      'emissionType': ?emissionType,
    };
  }

  factory EmissionPoliciesPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return EmissionPoliciesPropertiesFormatResponse(
      emissionDestinations: map['emissionDestinations'] == null ? null : pulumi.Input.decodeList<EmissionPolicyDestinationResponse>(map['emissionDestinations'], (value) => EmissionPolicyDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      emissionType: map['emissionType'] == null ? null : map['emissionType'] as String,
    );
  }
}

