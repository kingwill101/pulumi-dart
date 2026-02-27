// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_authenticator.dart';

/// Require a signed [DSSE](https://github.com/secure-systems-lab/dsse) attestation with type SimpleSigning.
class SimpleSigningAttestationCheck {
  /// The authenticators required by this check to verify an attestation. Typically this is one or more PKIX public keys for signature verification. Only one authenticator needs to consider an attestation verified in order for an attestation to be considered fully authenticated. In otherwords, this list of authenticators is an "OR" of the authenticator results. At least one authenticator is required.
  final List<AttestationAuthenticator> attestationAuthenticators;

  /// Optional. The projects where attestations are stored as Container Analysis Occurrences. Only one attestation needs to successfully verify an image for this check to pass, so a single verified attestation found in any of `container_analysis_attestation_projects` is sufficient for the check to pass. When fetching Occurrences from Container Analysis, only 'AttestationOccurrence' kinds are considered. In the future, additional Occurrence kinds may be added to the query.
  final List<String>? containerAnalysisAttestationProjects;

  SimpleSigningAttestationCheck({
    required this.attestationAuthenticators,
    this.containerAnalysisAttestationProjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attestationAuthenticators'] =
        pulumi.Input.encodeList<AttestationAuthenticator, Map<String, dynamic>>(
            attestationAuthenticators, (value) => value.toMap());
    final containerAnalysisAttestationProjectsValue =
        containerAnalysisAttestationProjects;
    if (containerAnalysisAttestationProjectsValue != null) {
      map['containerAnalysisAttestationProjects'] =
          containerAnalysisAttestationProjectsValue;
    }
    return map;
  }

  factory SimpleSigningAttestationCheck.fromMap(Map<String, dynamic> map) {
    return SimpleSigningAttestationCheck(
      attestationAuthenticators:
          pulumi.Input.decodeList<AttestationAuthenticator>(
              map['attestationAuthenticators'],
              (value) => AttestationAuthenticator.fromMap(
                  (value as Map).cast<String, dynamic>())),
      containerAnalysisAttestationProjects:
          map['containerAnalysisAttestationProjects'] == null
              ? null
              : (map['containerAnalysisAttestationProjects'] as List)
                  .cast<String>(),
    );
  }
}
