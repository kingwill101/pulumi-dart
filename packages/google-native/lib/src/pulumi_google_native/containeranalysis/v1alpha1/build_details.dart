// ignore_for_file: unused_element, unnecessary_cast

import 'build_provenance2.dart';
import 'in_toto_provenance2.dart';
import 'in_toto_slsa_provenance_v2.dart';
import 'in_toto_statement2.dart';

/// Message encapsulating build provenance details.
class BuildDetails {
  /// In-Toto Slsa Provenance V1 represents a slsa provenance meeting the slsa spec, wrapped in an in-toto statement. This allows for direct jsonification of a to-spec in-toto slsa statement with a to-spec slsa provenance.
  final InTotoSlsaProvenanceV2? inTotoSlsaProvenanceV1;

  /// Deprecated. See InTotoStatement for the replacement. In-toto Provenance representation as defined in spec.
  final InTotoProvenance2? intotoProvenance;

  /// In-toto Statement representation as defined in spec. The intoto_statement can contain any type of provenance. The serialized payload of the statement can be stored and signed in the Occurrence's envelope.
  final InTotoStatement2? intotoStatement;

  /// The actual provenance
  final BuildProvenance2? provenance;

  /// Serialized JSON representation of the provenance, used in generating the `BuildSignature` in the corresponding Result. After verifying the signature, `provenance_bytes` can be unmarshalled and compared to the provenance to confirm that it is unchanged. A base64-encoded string representation of the provenance bytes is used for the signature in order to interoperate with openssl which expects this format for signature verification. The serialized form is captured both to avoid ambiguity in how the provenance is marshalled to json as well to prevent incompatibilities with future changes.
  final String? provenanceBytes;

  BuildDetails({
    this.inTotoSlsaProvenanceV1,
    this.intotoProvenance,
    this.intotoStatement,
    this.provenance,
    this.provenanceBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inTotoSlsaProvenanceV1Value = inTotoSlsaProvenanceV1;
    if (inTotoSlsaProvenanceV1Value != null) {
      map['inTotoSlsaProvenanceV1'] = inTotoSlsaProvenanceV1Value.toMap();
    }
    final intotoProvenanceValue = intotoProvenance;
    if (intotoProvenanceValue != null) {
      map['intotoProvenance'] = intotoProvenanceValue.toMap();
    }
    final intotoStatementValue = intotoStatement;
    if (intotoStatementValue != null) {
      map['intotoStatement'] = intotoStatementValue.toMap();
    }
    final provenanceValue = provenance;
    if (provenanceValue != null) {
      map['provenance'] = provenanceValue.toMap();
    }
    final provenanceBytesValue = provenanceBytes;
    if (provenanceBytesValue != null) {
      map['provenanceBytes'] = provenanceBytesValue;
    }
    return map;
  }

  factory BuildDetails.fromMap(Map<String, dynamic> map) {
    return BuildDetails(
      inTotoSlsaProvenanceV1: map['inTotoSlsaProvenanceV1'] == null
          ? null
          : InTotoSlsaProvenanceV2.fromMap(
              (map['inTotoSlsaProvenanceV1'] as Map).cast<String, dynamic>()),
      intotoProvenance: map['intotoProvenance'] == null
          ? null
          : InTotoProvenance2.fromMap(
              (map['intotoProvenance'] as Map).cast<String, dynamic>()),
      intotoStatement: map['intotoStatement'] == null
          ? null
          : InTotoStatement2.fromMap(
              (map['intotoStatement'] as Map).cast<String, dynamic>()),
      provenance: map['provenance'] == null
          ? null
          : BuildProvenance2.fromMap(
              (map['provenance'] as Map).cast<String, dynamic>()),
      provenanceBytes: map['provenanceBytes'] == null
          ? null
          : map['provenanceBytes'] as String,
    );
  }
}
