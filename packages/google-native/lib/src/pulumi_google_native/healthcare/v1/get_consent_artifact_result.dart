// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'image_response.dart';
import 'signature_response3.dart';

/// Result data returned by getConsentArtifact.
class GetConsentArtifactResult {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  final List<ImageResponse> consentContentScreenshots;

  /// Optional. An string indicating the version of the consent information shown to the user.
  final String consentContentVersion;

  /// Optional. A signature from a guardian.
  final SignatureResponse3 guardianSignature;

  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  final Map<String, String> metadata;

  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  final String name;

  /// User's UUID provided by the client.
  final String userId;

  /// Optional. User's signature.
  final SignatureResponse3 userSignature;

  /// Optional. A signature from a witness.
  final SignatureResponse3 witnessSignature;

  GetConsentArtifactResult({
    required this.consentContentScreenshots,
    required this.consentContentVersion,
    required this.guardianSignature,
    required this.metadata,
    required this.name,
    required this.userId,
    required this.userSignature,
    required this.witnessSignature,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consentContentScreenshots'] =
        Input.encodeList<ImageResponse, Map<String, dynamic>>(
            consentContentScreenshots, (value) => value.toMap());
    map['consentContentVersion'] = consentContentVersion;
    map['guardianSignature'] = guardianSignature.toMap();
    map['metadata'] = metadata;
    map['name'] = name;
    map['userId'] = userId;
    map['userSignature'] = userSignature.toMap();
    map['witnessSignature'] = witnessSignature.toMap();
    return map;
  }

  factory GetConsentArtifactResult.fromMap(Map<String, dynamic> map) {
    return GetConsentArtifactResult(
      consentContentScreenshots: Input.decodeList<ImageResponse>(
          map['consentContentScreenshots'],
          (value) =>
              ImageResponse.fromMap((value as Map).cast<String, dynamic>())),
      consentContentVersion: map['consentContentVersion'] as String,
      guardianSignature: SignatureResponse3.fromMap(
          (map['guardianSignature'] as Map).cast<String, dynamic>()),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      userId: map['userId'] as String,
      userSignature: SignatureResponse3.fromMap(
          (map['userSignature'] as Map).cast<String, dynamic>()),
      witnessSignature: SignatureResponse3.fromMap(
          (map['witnessSignature'] as Map).cast<String, dynamic>()),
    );
  }
}
