// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_saved_query.dart';

/// The set of arguments for Dataset.
class DatasetArgs {
  /// The description of the Dataset.
  final pulumi.Input<String>? description;

  /// The user-defined name of the Dataset. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;

  /// Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;

  /// The labels with user-defined metadata to organize your Datasets. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Dataset (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable. Following system labels exist for each Dataset: * "aiplatform.googleapis.com/dataset_metadata_schema": output only, its value is the metadata_schema's title.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Additional information about the Dataset.
  final pulumi.Input<dynamic> metadata;

  /// Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
  final pulumi.Input<String> metadataSchemaUri;
  final pulumi.Input<String>? project;

  /// All SavedQueries belong to the Dataset will be returned in List/Get Dataset response. The annotation_specs field will not be populated except for UI cases which will only use annotation_spec_count. In CreateDataset request, a SavedQuery is created together if this field is set, up to one SavedQuery can be set in CreateDatasetRequest. The SavedQuery should not contain any AnnotationSpec.
  final pulumi.Input<List<GoogleCloudAiplatformV1SavedQuery>>? savedQueries;

  DatasetArgs({
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.etag,
    this.labels,
    this.location,
    required this.metadata,
    required this.metadataSchemaUri,
    this.project,
    this.savedQueries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['metadata'] = metadata;
    map['metadataSchemaUri'] = metadataSchemaUri;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final savedQueriesValue = savedQueries;
    if (savedQueriesValue != null) {
      map['savedQueries'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudAiplatformV1SavedQuery>,
              List<Map<String, dynamic>>>(
          savedQueriesValue,
          (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1SavedQuery,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory DatasetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      encryptionSpec:
          pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(
              map['encryptionSpec']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      metadata: pulumi.Input.asInput<dynamic>(map['metadata']),
      metadataSchemaUri: pulumi.Input.asInput<String>(map['metadataSchemaUri']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      savedQueries:
          pulumi.Input.asOptionalInput<List<GoogleCloudAiplatformV1SavedQuery>>(
              map['savedQueries']),
    );
  }
}
