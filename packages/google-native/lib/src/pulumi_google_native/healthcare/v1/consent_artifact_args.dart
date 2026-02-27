// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image.dart';
import 'signature_healthcare_v1.dart';

/// The set of arguments for ConsentArtifact.
class ConsentArtifactArgs {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  final pulumi.Input<List<Image>>? consentContentScreenshots;

  /// Optional. An string indicating the version of the consent information shown to the user.
  final pulumi.Input<String>? consentContentVersion;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;

  /// Optional. A signature from a guardian.
  final pulumi.Input<SignatureHealthcareV1>? guardianSignature;
  final pulumi.Input<String>? location;

  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  final pulumi.Input<Map<String, String>>? metadata;

  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// User's UUID provided by the client.
  final pulumi.Input<String> userId;

  /// Optional. User's signature.
  final pulumi.Input<SignatureHealthcareV1>? userSignature;

  /// Optional. A signature from a witness.
  final pulumi.Input<SignatureHealthcareV1>? witnessSignature;

  ConsentArtifactArgs({
    this.consentContentScreenshots,
    this.consentContentVersion,
    required this.consentStoreId,
    required this.datasetId,
    this.guardianSignature,
    this.location,
    this.metadata,
    this.name,
    this.project,
    required this.userId,
    this.userSignature,
    this.witnessSignature,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consentContentScreenshotsValue = consentContentScreenshots;
    if (consentContentScreenshotsValue != null) {
      map['consentContentScreenshots'] = pulumi.Input.mapOptionalInputValue<
              List<Image>, List<Map<String, dynamic>>>(
          consentContentScreenshotsValue,
          (value) => pulumi.Input.encodeList<Image, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final consentContentVersionValue = consentContentVersion;
    if (consentContentVersionValue != null) {
      map['consentContentVersion'] = consentContentVersionValue;
    }
    map['consentStoreId'] = consentStoreId;
    map['datasetId'] = datasetId;
    final guardianSignatureValue = guardianSignature;
    if (guardianSignatureValue != null) {
      map['guardianSignature'] = pulumi.Input.mapOptionalInputValue<
              SignatureHealthcareV1, Map<String, dynamic>>(
          guardianSignatureValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['userId'] = userId;
    final userSignatureValue = userSignature;
    if (userSignatureValue != null) {
      map['userSignature'] = pulumi.Input.mapOptionalInputValue<
          SignatureHealthcareV1,
          Map<String, dynamic>>(userSignatureValue, (value) => value.toMap());
    }
    final witnessSignatureValue = witnessSignature;
    if (witnessSignatureValue != null) {
      map['witnessSignature'] = pulumi.Input.mapOptionalInputValue<
              SignatureHealthcareV1, Map<String, dynamic>>(
          witnessSignatureValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConsentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return ConsentArtifactArgs(
      consentContentScreenshots: pulumi.Input.asOptionalInput<List<Image>>(
          map['consentContentScreenshots']),
      consentContentVersion:
          pulumi.Input.asOptionalInput<String>(map['consentContentVersion']),
      consentStoreId: pulumi.Input.asInput<String>(map['consentStoreId']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      guardianSignature: pulumi.Input.asOptionalInput<SignatureHealthcareV1>(
          map['guardianSignature']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      userId: pulumi.Input.asInput<String>(map['userId']),
      userSignature: pulumi.Input.asOptionalInput<SignatureHealthcareV1>(
          map['userSignature']),
      witnessSignature: pulumi.Input.asOptionalInput<SignatureHealthcareV1>(
          map['witnessSignature']),
    );
  }
}
