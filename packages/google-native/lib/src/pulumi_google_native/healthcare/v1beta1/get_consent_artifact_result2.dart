// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'image_response2.dart';
import 'signature_response4.dart';

/// Result data returned by getConsentArtifact.
class GetConsentArtifactResult2 {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  final List<ImageResponse2> consentContentScreenshots;

  /// Optional. An string indicating the version of the consent information shown to the user.
  final String consentContentVersion;

  /// Optional. A signature from a guardian.
  final SignatureResponse4 guardianSignature;

  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  final Map<String, String> metadata;

  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  final String name;

  /// User's UUID provided by the client.
  final String userId;

  /// Optional. User's signature.
  final SignatureResponse4 userSignature;

  /// Optional. A signature from a witness.
  final SignatureResponse4 witnessSignature;

  GetConsentArtifactResult2({
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
        Input.encodeList<ImageResponse2, Map<String, dynamic>>(
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

  factory GetConsentArtifactResult2.fromMap(Map<String, dynamic> map) {
    return GetConsentArtifactResult2(
      consentContentScreenshots: Input.decodeList<ImageResponse2>(
          map['consentContentScreenshots'],
          (value) =>
              ImageResponse2.fromMap((value as Map).cast<String, dynamic>())),
      consentContentVersion: map['consentContentVersion'] as String,
      guardianSignature: SignatureResponse4.fromMap(
          (map['guardianSignature'] as Map).cast<String, dynamic>()),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      userId: map['userId'] as String,
      userSignature: SignatureResponse4.fromMap(
          (map['userSignature'] as Map).cast<String, dynamic>()),
      witnessSignature: SignatureResponse4.fromMap(
          (map['witnessSignature'] as Map).cast<String, dynamic>()),
    );
  }
}
