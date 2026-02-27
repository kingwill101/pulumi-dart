// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_saved_query_response.dart';

/// Result data returned by getDataset.
class GetDatasetResult {
  /// Timestamp when this Dataset was created.
  final String createTime;

  /// The number of DataItems in this Dataset. Only apply for non-structured Dataset.
  final String dataItemCount;

  /// The description of the Dataset.
  final String description;

  /// The user-defined name of the Dataset. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String displayName;

  /// Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key.
  final GoogleCloudAiplatformV1EncryptionSpecResponse encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;

  /// The labels with user-defined metadata to organize your Datasets. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Dataset (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable. Following system labels exist for each Dataset: * "aiplatform.googleapis.com/dataset_metadata_schema": output only, its value is the metadata_schema's title.
  final Map<String, String> labels;

  /// Additional information about the Dataset.
  final dynamic metadata;

  /// The resource name of the Artifact that was created in MetadataStore when creating the Dataset. The Artifact resource name pattern is `projects/{project}/locations/{location}/metadataStores/{metadata_store}/artifacts/{artifact}`.
  final String metadataArtifact;

  /// Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
  final String metadataSchemaUri;

  /// The resource name of the Dataset.
  final String name;

  /// All SavedQueries belong to the Dataset will be returned in List/Get Dataset response. The annotation_specs field will not be populated except for UI cases which will only use annotation_spec_count. In CreateDataset request, a SavedQuery is created together if this field is set, up to one SavedQuery can be set in CreateDatasetRequest. The SavedQuery should not contain any AnnotationSpec.
  final List<GoogleCloudAiplatformV1SavedQueryResponse> savedQueries;

  /// Timestamp when this Dataset was last updated.
  final String updateTime;

  GetDatasetResult({
    required this.createTime,
    required this.dataItemCount,
    required this.description,
    required this.displayName,
    required this.encryptionSpec,
    required this.etag,
    required this.labels,
    required this.metadata,
    required this.metadataArtifact,
    required this.metadataSchemaUri,
    required this.name,
    required this.savedQueries,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['dataItemCount'] = dataItemCount;
    map['description'] = description;
    map['displayName'] = displayName;
    map['encryptionSpec'] = encryptionSpec.toMap();
    map['etag'] = etag;
    map['labels'] = labels;
    map['metadata'] = metadata;
    map['metadataArtifact'] = metadataArtifact;
    map['metadataSchemaUri'] = metadataSchemaUri;
    map['name'] = name;
    map['savedQueries'] = pulumi.Input.encodeList<
        GoogleCloudAiplatformV1SavedQueryResponse,
        Map<String, dynamic>>(savedQueries, (value) => value.toMap());
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetDatasetResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetResult(
      createTime: map['createTime'] as String,
      dataItemCount: map['dataItemCount'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec: GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap(
          (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      metadata: map['metadata'],
      metadataArtifact: map['metadataArtifact'] as String,
      metadataSchemaUri: map['metadataSchemaUri'] as String,
      name: map['name'] as String,
      savedQueries:
          pulumi.Input.decodeList<GoogleCloudAiplatformV1SavedQueryResponse>(
              map['savedQueries'],
              (value) => GoogleCloudAiplatformV1SavedQueryResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
