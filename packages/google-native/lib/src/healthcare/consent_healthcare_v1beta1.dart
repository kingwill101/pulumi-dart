import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_healthcare_v1beta1_args.dart';
import 'google_cloud_healthcare_v1beta1_consent_policy_response.dart';

/// Creates a new Consent in the parent consent store.
class ConsentHealthcareV1beta1 extends pulumi.CustomResource {
  /// The resource name of the Consent artifact that contains proof of the end user's consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  late final pulumi.Output<String> consentArtifact;
  late final pulumi.Output<String> consentStoreId;
  late final pulumi.Output<String> datasetId;

  /// Timestamp in UTC of when this Consent is considered expired.
  late final pulumi.Output<String> expireTime;
  late final pulumi.Output<String> location;

  /// Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - begin with a letter - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes Metadata values must be: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes No more than 64 metadata entries can be associated with a given consent.
  late final pulumi.Output<Map<String, String>> metadata;

  /// Resource name of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. Cannot be changed after creation.
  late final pulumi.Output<String> name;

  /// Optional. Represents a user's consent in terms of the resources that can be accessed and under what conditions.
  late final pulumi
      .Output<List<GoogleCloudHealthcareV1beta1ConsentPolicyResponse>> policies;
  late final pulumi.Output<String> project;

  /// The timestamp that the revision was created.
  late final pulumi.Output<String> revisionCreateTime;

  /// The revision ID of the Consent. The format is an 8-character hexadecimal string. Refer to a specific revision of a Consent by appending `@{revision_id}` to the Consent's resource name.
  late final pulumi.Output<String> revisionId;

  /// Indicates the current state of this Consent.
  late final pulumi.Output<String> state;

  /// Input only. The time to live for this Consent from when it is created.
  late final pulumi.Output<String> ttl;

  /// User's UUID provided by the client.
  late final pulumi.Output<String> userId;

  /// Creates a new [ConsentHealthcareV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsentHealthcareV1beta1]. {@macro pulumi_healthcare_v1beta1_consent_healthcare_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsentHealthcareV1beta1(
    String name, {
    ConsentHealthcareV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1beta1:Consent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.consentArtifact = registerOutput<String>('consentArtifact');
    this.consentStoreId = registerOutput<String>('consentStoreId');
    this.datasetId = registerOutput<String>('datasetId');
    this.expireTime = registerOutput<String>('expireTime');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    this.policies =
        registerOutput<List<GoogleCloudHealthcareV1beta1ConsentPolicyResponse>>(
            'policies');
    this.project = registerOutput<String>('project');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.state = registerOutput<String>('state');
    this.ttl = registerOutput<String>('ttl');
    this.userId = registerOutput<String>('userId');
  }
}
