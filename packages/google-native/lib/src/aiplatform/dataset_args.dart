// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_saved_query.dart';

/// {@template pulumi_aiplatform_v1_dataset_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_dataset_args_doc}
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

  /// Creates a new [DatasetArgs].
  /// [description] The description of the Dataset.
  /// [displayName] The user-defined name of the Dataset. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] The labels with user-defined metadata to organize your Datasets. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Dataset (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable. Following system labels exist for each Dataset: * "aiplatform.googleapis.com/dataset_metadata_schema": output only, its value is the metadata_schema's title.
  /// [location] Optional.
  /// [metadata] Additional information about the Dataset.
  /// [metadataSchemaUri] Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
  /// [project] Optional.
  /// [savedQueries] All SavedQueries belong to the Dataset will be returned in List/Get Dataset response. The annotation_specs field will not be populated except for UI cases which will only use annotation_spec_count. In CreateDataset request, a SavedQuery is created together if this field is set, up to one SavedQuery can be set in CreateDatasetRequest. The SavedQuery should not contain any AnnotationSpec.
  DatasetArgs({
    String? description,
    required String displayName,
    GoogleCloudAiplatformV1EncryptionSpec? encryptionSpec,
    String? etag,
    Map<String, String>? labels,
    String? location,
    required dynamic metadata,
    required String metadataSchemaUri,
    String? project,
    List<GoogleCloudAiplatformV1SavedQuery>? savedQueries,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        encryptionSpec =
            pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(
                encryptionSpec),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        metadata = pulumi.Input.asInput<dynamic>(metadata),
        metadataSchemaUri = pulumi.Input.asInput<String>(metadataSchemaUri),
        project = pulumi.Input.asOptionalInput<String>(project),
        savedQueries = pulumi.Input.asOptionalInput<
            List<GoogleCloudAiplatformV1SavedQuery>>(savedQueries);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null
          ? null
          : GoogleCloudAiplatformV1EncryptionSpec.fromMap(
              (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      metadata: map['metadata'],
      metadataSchemaUri: map['metadataSchemaUri'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      savedQueries: map['savedQueries'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudAiplatformV1SavedQuery>(
              map['savedQueries'],
              (value) => GoogleCloudAiplatformV1SavedQuery.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
