// ignore_for_file: unused_element, unnecessary_cast

import 'build_provenance_response2.dart';
import 'in_toto_provenance_response2.dart';
import 'in_toto_slsa_provenance_v1_response2.dart';
import 'in_toto_statement_response2.dart';

/// Message encapsulating build provenance details.
class BuildDetailsResponse {
  /// In-Toto Slsa Provenance V1 represents a slsa provenance meeting the slsa spec, wrapped in an in-toto statement. This allows for direct jsonification of a to-spec in-toto slsa statement with a to-spec slsa provenance.
  final InTotoSlsaProvenanceV1Response2 inTotoSlsaProvenanceV1;

  /// Deprecated. See InTotoStatement for the replacement. In-toto Provenance representation as defined in spec.
  final InTotoProvenanceResponse2 intotoProvenance;

  /// In-toto Statement representation as defined in spec. The intoto_statement can contain any type of provenance. The serialized payload of the statement can be stored and signed in the Occurrence's envelope.
  final InTotoStatementResponse2 intotoStatement;

  /// The actual provenance
  final BuildProvenanceResponse2 provenance;

  /// Serialized JSON representation of the provenance, used in generating the `BuildSignature` in the corresponding Result. After verifying the signature, `provenance_bytes` can be unmarshalled and compared to the provenance to confirm that it is unchanged. A base64-encoded string representation of the provenance bytes is used for the signature in order to interoperate with openssl which expects this format for signature verification. The serialized form is captured both to avoid ambiguity in how the provenance is marshalled to json as well to prevent incompatibilities with future changes.
  final String provenanceBytes;

  BuildDetailsResponse({
    required this.inTotoSlsaProvenanceV1,
    required this.intotoProvenance,
    required this.intotoStatement,
    required this.provenance,
    required this.provenanceBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inTotoSlsaProvenanceV1'] = inTotoSlsaProvenanceV1.toMap();
    map['intotoProvenance'] = intotoProvenance.toMap();
    map['intotoStatement'] = intotoStatement.toMap();
    map['provenance'] = provenance.toMap();
    map['provenanceBytes'] = provenanceBytes;
    return map;
  }

  factory BuildDetailsResponse.fromMap(Map<String, dynamic> map) {
    return BuildDetailsResponse(
      inTotoSlsaProvenanceV1: InTotoSlsaProvenanceV1Response2.fromMap(
          (map['inTotoSlsaProvenanceV1'] as Map).cast<String, dynamic>()),
      intotoProvenance: InTotoProvenanceResponse2.fromMap(
          (map['intotoProvenance'] as Map).cast<String, dynamic>()),
      intotoStatement: InTotoStatementResponse2.fromMap(
          (map['intotoStatement'] as Map).cast<String, dynamic>()),
      provenance: BuildProvenanceResponse2.fromMap(
          (map['provenance'] as Map).cast<String, dynamic>()),
      provenanceBytes: map['provenanceBytes'] as String,
    );
  }
}
