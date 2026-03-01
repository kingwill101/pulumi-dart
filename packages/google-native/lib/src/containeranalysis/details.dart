// ignore_for_file: unused_element, unnecessary_cast

import 'attestation_containeranalysis_v1beta1.dart';

/// Details of an attestation occurrence.
class Details {
  /// Attestation for the resource.
  final AttestationContaineranalysisV1beta1 attestation;

  /// Creates a new [Details].
  /// [attestation] Attestation for the resource.
  Details({required this.attestation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'attestation': attestation.toMap()};
  }

  factory Details.fromMap(Map<String, dynamic> map) {
    return Details(
      attestation: AttestationContaineranalysisV1beta1.fromMap(
        (map['attestation'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
