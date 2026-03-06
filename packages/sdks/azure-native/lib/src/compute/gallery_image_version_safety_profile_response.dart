// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_violation_response.dart';

/// This is the safety profile of the Gallery Image Version.
class GalleryImageVersionSafetyProfileResponse {
  /// Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  final pulumi.Input<bool>? allowDeletionOfReplicatedLocations;
  /// Indicates whether or not the deletion is blocked for this Gallery Image Version if its End Of Life has not expired.
  final pulumi.Input<bool>? blockDeletionBeforeEndOfLife;
  /// A list of Policy Violations that have been reported for this Gallery Image Version.
  final pulumi.Input<List<PolicyViolationResponse>> policyViolations;
  /// Indicates whether this image has been reported as violating Microsoft's policies.
  final pulumi.Input<bool> reportedForPolicyViolation;

  /// Creates a new [GalleryImageVersionSafetyProfileResponse].
  /// [allowDeletionOfReplicatedLocations] Indicates whether or not removing this Gallery Image Version from replicated regions is allowed.
  /// [blockDeletionBeforeEndOfLife] Indicates whether or not the deletion is blocked for this Gallery Image Version if its End Of Life has not expired.
  /// [policyViolations] A list of Policy Violations that have been reported for this Gallery Image Version.
  /// [reportedForPolicyViolation] Indicates whether this image has been reported as violating Microsoft's policies.
  const GalleryImageVersionSafetyProfileResponse({
    this.allowDeletionOfReplicatedLocations,
    this.blockDeletionBeforeEndOfLife,
    required this.policyViolations,
    required this.reportedForPolicyViolation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDeletionOfReplicatedLocations': ?allowDeletionOfReplicatedLocations,
      'blockDeletionBeforeEndOfLife': ?blockDeletionBeforeEndOfLife,
      'policyViolations': pulumi.Input.mapInputValue<List<PolicyViolationResponse>, List<Map<String, dynamic>>>(policyViolations, (value) => pulumi.Input.encodeList<PolicyViolationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reportedForPolicyViolation': reportedForPolicyViolation,
    };
  }

  factory GalleryImageVersionSafetyProfileResponse.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionSafetyProfileResponse(
      allowDeletionOfReplicatedLocations: (() { final guardedValue = map['allowDeletionOfReplicatedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      blockDeletionBeforeEndOfLife: (() { final guardedValue = map['blockDeletionBeforeEndOfLife']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      policyViolations: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyViolationResponse>(map['policyViolations']!, (value) => PolicyViolationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      reportedForPolicyViolation: pulumi.Input.fromValue(map['reportedForPolicyViolation'] as bool),
    );
  }
}

