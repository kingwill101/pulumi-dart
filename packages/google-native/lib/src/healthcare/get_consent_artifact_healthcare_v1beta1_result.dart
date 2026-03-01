// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_response_healthcare_v1beta1.dart';
import 'signature_response_healthcare_v1beta1.dart';

/// Result data returned by getConsentArtifact.
class GetConsentArtifactHealthcareV1beta1Result {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  final List<ImageResponseHealthcareV1beta1> consentContentScreenshots;

  /// Optional. An string indicating the version of the consent information shown to the user.
  final String consentContentVersion;

  /// Optional. A signature from a guardian.
  final SignatureResponseHealthcareV1beta1 guardianSignature;

  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  final Map<String, String> metadata;

  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  final String name;

  /// User's UUID provided by the client.
  final String userId;

  /// Optional. User's signature.
  final SignatureResponseHealthcareV1beta1 userSignature;

  /// Optional. A signature from a witness.
  final SignatureResponseHealthcareV1beta1 witnessSignature;

  /// Creates a new [GetConsentArtifactHealthcareV1beta1Result].
  /// [consentContentScreenshots] Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  /// [consentContentVersion] Optional. An string indicating the version of the consent information shown to the user.
  /// [guardianSignature] Optional. A signature from a guardian.
  /// [metadata] Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  /// [name] Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  /// [userId] User's UUID provided by the client.
  /// [userSignature] Optional. User's signature.
  /// [witnessSignature] Optional. A signature from a witness.
  GetConsentArtifactHealthcareV1beta1Result({
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
    return <String, dynamic>{
      'consentContentScreenshots':
          pulumi.Input.encodeList<
            ImageResponseHealthcareV1beta1,
            Map<String, dynamic>
          >(consentContentScreenshots, (value) => value.toMap()),
      'consentContentVersion': consentContentVersion,
      'guardianSignature': guardianSignature.toMap(),
      'metadata': metadata,
      'name': name,
      'userId': userId,
      'userSignature': userSignature.toMap(),
      'witnessSignature': witnessSignature.toMap(),
    };
  }

  factory GetConsentArtifactHealthcareV1beta1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConsentArtifactHealthcareV1beta1Result(
      consentContentScreenshots:
          pulumi.Input.decodeList<ImageResponseHealthcareV1beta1>(
            map['consentContentScreenshots'],
            (value) => ImageResponseHealthcareV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      consentContentVersion: map['consentContentVersion'] as String,
      guardianSignature: SignatureResponseHealthcareV1beta1.fromMap(
        (map['guardianSignature'] as Map).cast<String, dynamic>(),
      ),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      userId: map['userId'] as String,
      userSignature: SignatureResponseHealthcareV1beta1.fromMap(
        (map['userSignature'] as Map).cast<String, dynamic>(),
      ),
      witnessSignature: SignatureResponseHealthcareV1beta1.fromMap(
        (map['witnessSignature'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
