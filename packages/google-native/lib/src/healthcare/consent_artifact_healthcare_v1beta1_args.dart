// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_healthcare_v1beta1.dart';
import 'signature_healthcare_v1beta1.dart';

/// {@template pulumi_healthcare_v1beta1_consent_artifact_healthcare_v1beta1_args_doc}
/// The set of arguments for ConsentArtifact.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_consent_artifact_healthcare_v1beta1_args_doc}
class ConsentArtifactHealthcareV1beta1Args {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  final pulumi.Input<List<ImageHealthcareV1beta1>>? consentContentScreenshots;
  /// Optional. An string indicating the version of the consent information shown to the user.
  final pulumi.Input<String>? consentContentVersion;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  /// Optional. A signature from a guardian.
  final pulumi.Input<SignatureHealthcareV1beta1>? guardianSignature;
  final pulumi.Input<String>? location;
  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// User's UUID provided by the client.
  final pulumi.Input<String> userId;
  /// Optional. User's signature.
  final pulumi.Input<SignatureHealthcareV1beta1>? userSignature;
  /// Optional. A signature from a witness.
  final pulumi.Input<SignatureHealthcareV1beta1>? witnessSignature;

  /// Creates a new [ConsentArtifactHealthcareV1beta1Args].
  /// [consentContentScreenshots] Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  /// [consentContentVersion] Optional. An string indicating the version of the consent information shown to the user.
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [guardianSignature] Optional. A signature from a guardian.
  /// [location] Optional.
  /// [metadata] Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  /// [name] Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  /// [project] Optional.
  /// [userId] User's UUID provided by the client.
  /// [userSignature] Optional. User's signature.
  /// [witnessSignature] Optional. A signature from a witness.
  ConsentArtifactHealthcareV1beta1Args({
    List<ImageHealthcareV1beta1>? consentContentScreenshots,
    String? consentContentVersion,
    required String consentStoreId,
    required String datasetId,
    SignatureHealthcareV1beta1? guardianSignature,
    String? location,
    Map<String, String>? metadata,
    String? name,
    String? project,
    required String userId,
    SignatureHealthcareV1beta1? userSignature,
    SignatureHealthcareV1beta1? witnessSignature,
  }) :
      consentContentScreenshots = pulumi.Input.asOptionalInput<List<ImageHealthcareV1beta1>>(consentContentScreenshots),
      consentContentVersion = pulumi.Input.asOptionalInput<String>(consentContentVersion),
      consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      guardianSignature = pulumi.Input.asOptionalInput<SignatureHealthcareV1beta1>(guardianSignature),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      userId = pulumi.Input.asInput<String>(userId),
      userSignature = pulumi.Input.asOptionalInput<SignatureHealthcareV1beta1>(userSignature),
      witnessSignature = pulumi.Input.asOptionalInput<SignatureHealthcareV1beta1>(witnessSignature);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentContentScreenshots': ?pulumi.Input.mapOptionalInputValue<List<ImageHealthcareV1beta1>, List<Map<String, dynamic>>>(consentContentScreenshots, (value) => pulumi.Input.encodeList<ImageHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consentContentVersion': ?consentContentVersion,
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'guardianSignature': ?pulumi.Input.mapOptionalInputValue<SignatureHealthcareV1beta1, Map<String, dynamic>>(guardianSignature, (value) => value.toMap()),
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'project': ?project,
      'userId': userId,
      'userSignature': ?pulumi.Input.mapOptionalInputValue<SignatureHealthcareV1beta1, Map<String, dynamic>>(userSignature, (value) => value.toMap()),
      'witnessSignature': ?pulumi.Input.mapOptionalInputValue<SignatureHealthcareV1beta1, Map<String, dynamic>>(witnessSignature, (value) => value.toMap()),
    };
  }

  factory ConsentArtifactHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ConsentArtifactHealthcareV1beta1Args(
      consentContentScreenshots: map['consentContentScreenshots'] == null ? null : pulumi.Input.decodeList<ImageHealthcareV1beta1>(map['consentContentScreenshots'], (value) => ImageHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      consentContentVersion: map['consentContentVersion'] == null ? null : map['consentContentVersion'] as String,
      consentStoreId: map['consentStoreId'] as String,
      datasetId: map['datasetId'] as String,
      guardianSignature: map['guardianSignature'] == null ? null : SignatureHealthcareV1beta1.fromMap((map['guardianSignature'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      userId: map['userId'] as String,
      userSignature: map['userSignature'] == null ? null : SignatureHealthcareV1beta1.fromMap((map['userSignature'] as Map).cast<String, dynamic>()),
      witnessSignature: map['witnessSignature'] == null ? null : SignatureHealthcareV1beta1.fromMap((map['witnessSignature'] as Map).cast<String, dynamic>()),
    );
  }
}

