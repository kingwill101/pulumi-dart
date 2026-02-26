// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'image.dart';
import 'signature3.dart';

/// The set of arguments for ConsentArtifact.
class ConsentArtifactArgs {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  final Input<List<Image>>? consentContentScreenshots;

  /// Optional. An string indicating the version of the consent information shown to the user.
  final Input<String>? consentContentVersion;
  final Input<String> consentStoreId;
  final Input<String> datasetId;

  /// Optional. A signature from a guardian.
  final Input<Signature3>? guardianSignature;
  final Input<String>? location;

  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  final Input<Map<String, String>>? metadata;

  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  final Input<String>? name;
  final Input<String>? project;

  /// User's UUID provided by the client.
  final Input<String> userId;

  /// Optional. User's signature.
  final Input<Signature3>? userSignature;

  /// Optional. A signature from a witness.
  final Input<Signature3>? witnessSignature;

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
      map['consentContentScreenshots'] =
          Input.mapOptionalInputValue<List<Image>, List<Map<String, dynamic>>>(
              consentContentScreenshotsValue,
              (value) => Input.encodeList<Image, Map<String, dynamic>>(
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
      map['guardianSignature'] =
          Input.mapOptionalInputValue<Signature3, Map<String, dynamic>>(
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
      map['userSignature'] =
          Input.mapOptionalInputValue<Signature3, Map<String, dynamic>>(
              userSignatureValue, (value) => value.toMap());
    }
    final witnessSignatureValue = witnessSignature;
    if (witnessSignatureValue != null) {
      map['witnessSignature'] =
          Input.mapOptionalInputValue<Signature3, Map<String, dynamic>>(
              witnessSignatureValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConsentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return ConsentArtifactArgs(
      consentContentScreenshots:
          Input.asOptionalInput<List<Image>>(map['consentContentScreenshots']),
      consentContentVersion:
          Input.asOptionalInput<String>(map['consentContentVersion']),
      consentStoreId: Input.asInput<String>(map['consentStoreId']),
      datasetId: Input.asInput<String>(map['datasetId']),
      guardianSignature:
          Input.asOptionalInput<Signature3>(map['guardianSignature']),
      location: Input.asOptionalInput<String>(map['location']),
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      userId: Input.asInput<String>(map['userId']),
      userSignature: Input.asOptionalInput<Signature3>(map['userSignature']),
      witnessSignature:
          Input.asOptionalInput<Signature3>(map['witnessSignature']),
    );
  }
}
