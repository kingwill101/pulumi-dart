// ignore_for_file: unused_element, unnecessary_cast

import 'attestation_containeranalysis_v1beta1.dart';

/// Details of an attestation occurrence.
class Details {
  /// Attestation for the resource.
  final AttestationContaineranalysisV1beta1 attestation;

  Details({
    required this.attestation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attestation'] = attestation.toMap();
    return map;
  }

  factory Details.fromMap(Map<String, dynamic> map) {
    return Details(
      attestation: AttestationContaineranalysisV1beta1.fromMap(
          (map['attestation'] as Map).cast<String, dynamic>()),
    );
  }
}
