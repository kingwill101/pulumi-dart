// ignore_for_file: unused_element, unnecessary_cast

import 'attestation_response_containeranalysis_v1beta1.dart';

/// Details of an attestation occurrence.
class DetailsResponse {
  /// Attestation for the resource.
  final AttestationResponseContaineranalysisV1beta1 attestation;

  /// Creates a new [DetailsResponse].
  /// [attestation] Attestation for the resource.
  DetailsResponse({
    required this.attestation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attestation'] = attestation.toMap();
    return map;
  }

  factory DetailsResponse.fromMap(Map<String, dynamic> map) {
    return DetailsResponse(
      attestation: AttestationResponseContaineranalysisV1beta1.fromMap(
          (map['attestation'] as Map).cast<String, dynamic>()),
    );
  }
}
