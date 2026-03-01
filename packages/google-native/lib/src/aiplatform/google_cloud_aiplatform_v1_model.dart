// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_explanation_spec.dart';
import 'google_cloud_aiplatform_v1_model_container_spec.dart';
import 'google_cloud_aiplatform_v1_predict_schemata.dart';

/// A trained machine learning Model.
class GoogleCloudAiplatformV1Model {
  /// Immutable. The path to the directory containing the Model artifact and any of its supporting files. Not present for AutoML Models or Large Models.
  final String? artifactUri;

  /// Input only. The specification of the container that is to be used when deploying this Model. The specification is ingested upon ModelService.UploadModel, and all binaries it contains are copied and stored internally by Vertex AI. Not present for AutoML Models or Large Models.
  final GoogleCloudAiplatformV1ModelContainerSpec? containerSpec;

  /// The description of the Model.
  final String? description;

  /// The display name of the Model. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String displayName;

  /// Customer-managed encryption key spec for a Model. If set, this Model and all sub-resources of this Model will be secured by this key.
  final GoogleCloudAiplatformV1EncryptionSpec? encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String? etag;

  /// The default explanation specification for this Model. The Model can be used for requesting explanation after being deployed if it is populated. The Model can be used for batch explanation if it is populated. All fields of the explanation_spec can be overridden by explanation_spec of DeployModelRequest.deployed_model, or explanation_spec of BatchPredictionJob. If the default explanation specification is not set for this Model, this Model can still be used for requesting explanation by setting explanation_spec of DeployModelRequest.deployed_model and for batch explanation by setting explanation_spec of BatchPredictionJob.
  final GoogleCloudAiplatformV1ExplanationSpec? explanationSpec;

  /// The labels with user-defined metadata to organize your Models. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String>? labels;

  /// Immutable. An additional information about the Model; the schema of the metadata can be found in metadata_schema. Unset if the Model does not have any additional information.
  final dynamic metadata;

  /// Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Model, that is specific to it. Unset if the Model does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI, if no additional metadata is needed, this field is set to an empty string. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final String? metadataSchemaUri;

  /// The resource name of the Model.
  final String? name;

  /// Optional. This field is populated if the model is produced by a pipeline job.
  final String? pipelineJob;

  /// The schemata that describe formats of the Model's predictions and explanations as given and returned via PredictionService.Predict and PredictionService.Explain.
  final GoogleCloudAiplatformV1PredictSchemata? predictSchemata;

  /// User provided version aliases so that a model version can be referenced via alias (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_alias}` instead of auto-generated version id (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_id})`. The format is a-z{0,126}[a-z0-9] to distinguish from version_id. A default version alias will be created for the first version of the model, and there must be exactly one default version alias for a model.
  final List<String>? versionAliases;

  /// The description of this version.
  final String? versionDescription;

  /// Creates a new [GoogleCloudAiplatformV1Model].
  /// [artifactUri] Immutable. The path to the directory containing the Model artifact and any of its supporting files. Not present for AutoML Models or Large Models.
  /// [containerSpec] Input only. The specification of the container that is to be used when deploying this Model. The specification is ingested upon ModelService.UploadModel, and all binaries it contains are copied and stored internally by Vertex AI. Not present for AutoML Models or Large Models.
  /// [description] The description of the Model.
  /// [displayName] The display name of the Model. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for a Model. If set, this Model and all sub-resources of this Model will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [explanationSpec] The default explanation specification for this Model. The Model can be used for requesting explanation after being deployed if it is populated. The Model can be used for batch explanation if it is populated. All fields of the explanation_spec can be overridden by explanation_spec of DeployModelRequest.deployed_model, or explanation_spec of BatchPredictionJob. If the default explanation specification is not set for this Model, this Model can still be used for requesting explanation by setting explanation_spec of DeployModelRequest.deployed_model and for batch explanation by setting explanation_spec of BatchPredictionJob.
  /// [labels] The labels with user-defined metadata to organize your Models. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [metadata] Immutable. An additional information about the Model; the schema of the metadata can be found in metadata_schema. Unset if the Model does not have any additional information.
  /// [metadataSchemaUri] Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Model, that is specific to it. Unset if the Model does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI, if no additional metadata is needed, this field is set to an empty string. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  /// [name] The resource name of the Model.
  /// [pipelineJob] Optional. This field is populated if the model is produced by a pipeline job.
  /// [predictSchemata] The schemata that describe formats of the Model's predictions and explanations as given and returned via PredictionService.Predict and PredictionService.Explain.
  /// [versionAliases] User provided version aliases so that a model version can be referenced via alias (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_alias}` instead of auto-generated version id (i.e. `projects/{project}/locations/{location}/models/{model_id}@{version_id})`. The format is a-z{0,126}[a-z0-9] to distinguish from version_id. A default version alias will be created for the first version of the model, and there must be exactly one default version alias for a model.
  /// [versionDescription] The description of this version.
  GoogleCloudAiplatformV1Model({
    this.artifactUri,
    this.containerSpec,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.etag,
    this.explanationSpec,
    this.labels,
    this.metadata,
    this.metadataSchemaUri,
    this.name,
    this.pipelineJob,
    this.predictSchemata,
    this.versionAliases,
    this.versionDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactUri': ?artifactUri,
      'containerSpec': ?containerSpec == null ? null : containerSpec!.toMap(),
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?encryptionSpec == null
          ? null
          : encryptionSpec!.toMap(),
      'etag': ?etag,
      'explanationSpec': ?explanationSpec == null
          ? null
          : explanationSpec!.toMap(),
      'labels': ?labels,
      'metadata': ?metadata,
      'metadataSchemaUri': ?metadataSchemaUri,
      'name': ?name,
      'pipelineJob': ?pipelineJob,
      'predictSchemata': ?predictSchemata == null
          ? null
          : predictSchemata!.toMap(),
      'versionAliases': ?versionAliases,
      'versionDescription': ?versionDescription,
    };
  }

  factory GoogleCloudAiplatformV1Model.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1Model(
      artifactUri: map['artifactUri'] == null
          ? null
          : map['artifactUri'] as String,
      containerSpec: map['containerSpec'] == null
          ? null
          : GoogleCloudAiplatformV1ModelContainerSpec.fromMap(
              (map['containerSpec'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null
          ? null
          : GoogleCloudAiplatformV1EncryptionSpec.fromMap(
              (map['encryptionSpec'] as Map).cast<String, dynamic>(),
            ),
      etag: map['etag'] == null ? null : map['etag'] as String,
      explanationSpec: map['explanationSpec'] == null
          ? null
          : GoogleCloudAiplatformV1ExplanationSpec.fromMap(
              (map['explanationSpec'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      metadata: map['metadata'] == null ? null : map['metadata'],
      metadataSchemaUri: map['metadataSchemaUri'] == null
          ? null
          : map['metadataSchemaUri'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pipelineJob: map['pipelineJob'] == null
          ? null
          : map['pipelineJob'] as String,
      predictSchemata: map['predictSchemata'] == null
          ? null
          : GoogleCloudAiplatformV1PredictSchemata.fromMap(
              (map['predictSchemata'] as Map).cast<String, dynamic>(),
            ),
      versionAliases: map['versionAliases'] == null
          ? null
          : (map['versionAliases'] as List).cast<String>(),
      versionDescription: map['versionDescription'] == null
          ? null
          : map['versionDescription'] as String,
    );
  }
}
