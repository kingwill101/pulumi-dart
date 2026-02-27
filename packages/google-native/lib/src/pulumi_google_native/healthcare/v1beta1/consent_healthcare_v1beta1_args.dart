// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_state_healthcare_v1beta1.dart';
import 'google_cloud_healthcare_v1beta1_consent_policy.dart';

/// The set of arguments for Consent.
class ConsentHealthcareV1beta1Args {
  /// The resource name of the Consent artifact that contains proof of the end user's consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  final pulumi.Input<String> consentArtifact;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;

  /// Timestamp in UTC of when this Consent is considered expired.
  final pulumi.Input<String>? expireTime;
  final pulumi.Input<String>? location;

  /// Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - begin with a letter - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes Metadata values must be: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes No more than 64 metadata entries can be associated with a given consent.
  final pulumi.Input<Map<String, String>>? metadata;

  /// Resource name of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. Cannot be changed after creation.
  final pulumi.Input<String>? name;

  /// Optional. Represents a user's consent in terms of the resources that can be accessed and under what conditions.
  final pulumi.Input<List<GoogleCloudHealthcareV1beta1ConsentPolicy>>? policies;
  final pulumi.Input<String>? project;

  /// Indicates the current state of this Consent.
  final pulumi.Input<ConsentStateHealthcareV1beta1> state;

  /// Input only. The time to live for this Consent from when it is created.
  final pulumi.Input<String>? ttl;

  /// User's UUID provided by the client.
  final pulumi.Input<String> userId;

  ConsentHealthcareV1beta1Args({
    required this.consentArtifact,
    required this.consentStoreId,
    required this.datasetId,
    this.expireTime,
    this.location,
    this.metadata,
    this.name,
    this.policies,
    this.project,
    required this.state,
    this.ttl,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consentArtifact'] = consentArtifact;
    map['consentStoreId'] = consentStoreId;
    map['datasetId'] = datasetId;
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
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
    final policiesValue = policies;
    if (policiesValue != null) {
      map['policies'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudHealthcareV1beta1ConsentPolicy>,
              List<Map<String, dynamic>>>(
          policiesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudHealthcareV1beta1ConsentPolicy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['state'] =
        pulumi.Input.mapInputValue<ConsentStateHealthcareV1beta1, String>(
            state, (value) => value.value);
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    map['userId'] = userId;
    return map;
  }

  factory ConsentHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ConsentHealthcareV1beta1Args(
      consentArtifact: pulumi.Input.asInput<String>(map['consentArtifact']),
      consentStoreId: pulumi.Input.asInput<String>(map['consentStoreId']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      expireTime: pulumi.Input.asOptionalInput<String>(map['expireTime']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      policies: pulumi.Input.asOptionalInput<
          List<GoogleCloudHealthcareV1beta1ConsentPolicy>>(map['policies']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      state: pulumi.Input.asInput<ConsentStateHealthcareV1beta1>(map['state']),
      ttl: pulumi.Input.asOptionalInput<String>(map['ttl']),
      userId: pulumi.Input.asInput<String>(map['userId']),
    );
  }
}
