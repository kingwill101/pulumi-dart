// ignore_for_file: unused_element, unnecessary_cast

import 'build_provenance_containeranalysis_v1beta1.dart';
import 'in_toto_slsa_provenance_v1_containeranalysis_v1beta1.dart';

/// Details of a build occurrence.
class GrafeasV1beta1BuildDetails {
  final InTotoSlsaProvenanceV1ContaineranalysisV1beta1? inTotoSlsaProvenanceV1;
  /// The actual provenance for the build.
  final BuildProvenanceContaineranalysisV1beta1 provenance;
  /// Serialized JSON representation of the provenance, used in generating the build signature in the corresponding build note. After verifying the signature, `provenance_bytes` can be unmarshalled and compared to the provenance to confirm that it is unchanged. A base64-encoded string representation of the provenance bytes is used for the signature in order to interoperate with openssl which expects this format for signature verification. The serialized form is captured both to avoid ambiguity in how the provenance is marshalled to json as well to prevent incompatibilities with future changes.
  final String? provenanceBytes;

  /// Creates a new [GrafeasV1beta1BuildDetails].
  /// [inTotoSlsaProvenanceV1] Optional.
  /// [provenance] The actual provenance for the build.
  /// [provenanceBytes] Serialized JSON representation of the provenance, used in generating the build signature in the corresponding build note. After verifying the signature, `provenance_bytes` can be unmarshalled and compared to the provenance to confirm that it is unchanged. A base64-encoded string representation of the provenance bytes is used for the signature in order to interoperate with openssl which expects this format for signature verification. The serialized form is captured both to avoid ambiguity in how the provenance is marshalled to json as well to prevent incompatibilities with future changes.
  GrafeasV1beta1BuildDetails({
    this.inTotoSlsaProvenanceV1,
    required this.provenance,
    this.provenanceBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inTotoSlsaProvenanceV1': ?inTotoSlsaProvenanceV1 == null ? null : inTotoSlsaProvenanceV1!.toMap(),
      'provenance': provenance.toMap(),
      'provenanceBytes': ?provenanceBytes,
    };
  }

  factory GrafeasV1beta1BuildDetails.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1BuildDetails(
      inTotoSlsaProvenanceV1: map['inTotoSlsaProvenanceV1'] == null ? null : InTotoSlsaProvenanceV1ContaineranalysisV1beta1.fromMap((map['inTotoSlsaProvenanceV1'] as Map).cast<String, dynamic>()),
      provenance: BuildProvenanceContaineranalysisV1beta1.fromMap((map['provenance'] as Map).cast<String, dynamic>()),
      provenanceBytes: map['provenanceBytes'] == null ? null : map['provenanceBytes'] as String,
    );
  }
}

