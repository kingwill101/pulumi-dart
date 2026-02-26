// ignore_for_file: unused_element, unnecessary_cast

import 'attestation2.dart';

/// Details of an attestation occurrence.
class Details {
  /// Attestation for the resource.
  final Attestation2 attestation;

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
      attestation: Attestation2.fromMap(
          (map['attestation'] as Map).cast<String, dynamic>()),
    );
  }
}
