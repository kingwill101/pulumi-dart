// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_chains_response.dart';

/// Contains an HSM-generated attestation about a key operation. For more information, see [Verifying attestations] (https://cloud.google.com/kms/docs/attest-key).
class KeyOperationAttestationResponse {
  /// The certificate chains needed to validate the attestation
  final CertificateChainsResponse certChains;

  /// The attestation data provided by the HSM when the key operation was performed.
  final String content;

  /// The format of the attestation data.
  final String format;

  KeyOperationAttestationResponse({
    required this.certChains,
    required this.content,
    required this.format,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certChains'] = certChains.toMap();
    map['content'] = content;
    map['format'] = format;
    return map;
  }

  factory KeyOperationAttestationResponse.fromMap(Map<String, dynamic> map) {
    return KeyOperationAttestationResponse(
      certChains: CertificateChainsResponse.fromMap(
          (map['certChains'] as Map).cast<String, dynamic>()),
      content: map['content'] as String,
      format: map['format'] as String,
    );
  }
}
