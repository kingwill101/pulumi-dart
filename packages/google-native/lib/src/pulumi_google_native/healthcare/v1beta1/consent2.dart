import 'package:pulumi/pulumi.dart';
import 'consent_args2.dart';
import 'google_cloud_healthcare_v1beta1_consent_policy_response.dart';

/// Creates a new Consent in the parent consent store.
class Consent2 extends CustomResource {
  /// The resource name of the Consent artifact that contains proof of the end user's consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  late final Output<String> consentArtifact;
  late final Output<String> consentStoreId;
  late final Output<String> datasetId;

  /// Timestamp in UTC of when this Consent is considered expired.
  late final Output<String> expireTime;
  late final Output<String> location;

  /// Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - begin with a letter - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes Metadata values must be: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes No more than 64 metadata entries can be associated with a given consent.
  late final Output<Map<String, String>> metadata;

  /// Resource name of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. Cannot be changed after creation.
  late final Output<String> name;

  /// Optional. Represents a user's consent in terms of the resources that can be accessed and under what conditions.
  late final Output<List<GoogleCloudHealthcareV1beta1ConsentPolicyResponse>>
      policies;
  late final Output<String> project;

  /// The timestamp that the revision was created.
  late final Output<String> revisionCreateTime;

  /// The revision ID of the Consent. The format is an 8-character hexadecimal string. Refer to a specific revision of a Consent by appending `@{revision_id}` to the Consent's resource name.
  late final Output<String> revisionId;

  /// Indicates the current state of this Consent.
  late final Output<String> state;

  /// Input only. The time to live for this Consent from when it is created.
  late final Output<String> ttl;

  /// User's UUID provided by the client.
  late final Output<String> userId;

  Consent2(
    String name, {
    ConsentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1beta1:Consent',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.consentArtifact = Output.createUnknown<String>();
    this.consentStoreId = Output.createUnknown<String>();
    this.datasetId = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.metadata = Output.createUnknown<Map<String, String>>();
    this.name = Output.createUnknown<String>();
    this.policies = Output.createUnknown<
        List<GoogleCloudHealthcareV1beta1ConsentPolicyResponse>>();
    this.project = Output.createUnknown<String>();
    this.revisionCreateTime = Output.createUnknown<String>();
    this.revisionId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.ttl = Output.createUnknown<String>();
    this.userId = Output.createUnknown<String>();
  }
}
