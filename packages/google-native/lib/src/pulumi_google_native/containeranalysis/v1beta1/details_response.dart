// ignore_for_file: unused_element, unnecessary_cast

import 'attestation_response2.dart';

/// Details of an attestation occurrence.
class DetailsResponse {
  /// Attestation for the resource.
  final AttestationResponse2 attestation;

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
      attestation: AttestationResponse2.fromMap(
          (map['attestation'] as Map).cast<String, dynamic>()),
    );
  }
}
