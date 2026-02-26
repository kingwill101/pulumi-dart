import 'package:pulumi/pulumi.dart';
import 'dataset_args2.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_saved_query_response.dart';

/// Creates a Dataset.
/// Auto-naming is currently not supported for this resource.
class Dataset2 extends CustomResource {
  /// Timestamp when this Dataset was created.
  late final Output<String> createTime;

  /// The number of DataItems in this Dataset. Only apply for non-structured Dataset.
  late final Output<String> dataItemCount;

  /// The description of the Dataset.
  late final Output<String> description;

  /// The user-defined name of the Dataset. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key.
  late final Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>
      encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;

  /// The labels with user-defined metadata to organize your Datasets. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Dataset (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable. Following system labels exist for each Dataset: * "aiplatform.googleapis.com/dataset_metadata_schema": output only, its value is the metadata_schema's title.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Additional information about the Dataset.
  late final Output<dynamic> metadata;

  /// The resource name of the Artifact that was created in MetadataStore when creating the Dataset. The Artifact resource name pattern is `projects/{project}/locations/{location}/metadataStores/{metadata_store}/artifacts/{artifact}`.
  late final Output<String> metadataArtifact;

  /// Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
  late final Output<String> metadataSchemaUri;

  /// The resource name of the Dataset.
  late final Output<String> name;
  late final Output<String> project;

  /// All SavedQueries belong to the Dataset will be returned in List/Get Dataset response. The annotation_specs field will not be populated except for UI cases which will only use annotation_spec_count. In CreateDataset request, a SavedQuery is created together if this field is set, up to one SavedQuery can be set in CreateDatasetRequest. The SavedQuery should not contain any AnnotationSpec.
  late final Output<List<GoogleCloudAiplatformV1beta1SavedQueryResponse>>
      savedQueries;

  /// Timestamp when this Dataset was last updated.
  late final Output<String> updateTime;

  Dataset2(
    String name, {
    DatasetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:Dataset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataItemCount = registerOutput<String>('dataItemCount');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionSpec =
        registerOutput<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>(
            'encryptionSpec');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<dynamic>('metadata');
    this.metadataArtifact = registerOutput<String>('metadataArtifact');
    this.metadataSchemaUri = registerOutput<String>('metadataSchemaUri');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.savedQueries =
        registerOutput<List<GoogleCloudAiplatformV1beta1SavedQueryResponse>>(
            'savedQueries');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
