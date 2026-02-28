// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_input_data_config.dart';
import 'google_cloud_aiplatform_v1_model.dart';

/// {@template pulumi_aiplatform_v1_training_pipeline_args_doc}
/// The set of arguments for TrainingPipeline.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_training_pipeline_args_doc}
class TrainingPipelineArgs {
  /// The user-defined name of this TrainingPipeline.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for a TrainingPipeline. If set, this TrainingPipeline will be secured by this key. Note: Model trained by this TrainingPipeline is also secured by this key if model_to_upload is not set separately.
  final pulumi.Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;
  /// Specifies Vertex AI owned input data that may be used for training the Model. The TrainingPipeline's training_task_definition should make clear whether this config is used and if there are any special requirements on how it should be filled. If nothing about this config is mentioned in the training_task_definition, then it should be assumed that the TrainingPipeline does not depend on this configuration.
  final pulumi.Input<GoogleCloudAiplatformV1InputDataConfig>? inputDataConfig;
  /// The labels with user-defined metadata to organize TrainingPipelines. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. The ID to use for the uploaded Model, which will become the final component of the model resource name. This value may be up to 63 characters, and valid characters are `[a-z0-9_-]`. The first character cannot be a number or hyphen.
  final pulumi.Input<String>? modelId;
  /// Describes the Model that may be uploaded (via ModelService.UploadModel) by this TrainingPipeline. The TrainingPipeline's training_task_definition should make clear whether this Model description should be populated, and if there are any special requirements regarding how it should be filled. If nothing is mentioned in the training_task_definition, then it should be assumed that this field should not be filled and the training task either uploads the Model without a need of this information, or that training task does not support uploading a Model as part of the pipeline. When the Pipeline's state becomes `PIPELINE_STATE_SUCCEEDED` and the trained Model had been uploaded into Vertex AI, then the model_to_upload's resource name is populated. The Model is always uploaded into the Project and Location in which this pipeline is.
  final pulumi.Input<GoogleCloudAiplatformV1Model>? modelToUpload;
  /// Optional. When specify this field, the `model_to_upload` will not be uploaded as a new model, instead, it will become a new version of this `parent_model`.
  final pulumi.Input<String>? parentModel;
  final pulumi.Input<String>? project;
  /// A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final pulumi.Input<String> trainingTaskDefinition;
  /// The training task's parameter(s), as specified in the training_task_definition's `inputs`.
  final pulumi.Input<dynamic> trainingTaskInputs;

  /// Creates a new [TrainingPipelineArgs].
  /// [displayName] The user-defined name of this TrainingPipeline.
  /// [encryptionSpec] Customer-managed encryption key spec for a TrainingPipeline. If set, this TrainingPipeline will be secured by this key. Note: Model trained by this TrainingPipeline is also secured by this key if model_to_upload is not set separately.
  /// [inputDataConfig] Specifies Vertex AI owned input data that may be used for training the Model. The TrainingPipeline's training_task_definition should make clear whether this config is used and if there are any special requirements on how it should be filled. If nothing about this config is mentioned in the training_task_definition, then it should be assumed that the TrainingPipeline does not depend on this configuration.
  /// [labels] The labels with user-defined metadata to organize TrainingPipelines. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [modelId] Optional. The ID to use for the uploaded Model, which will become the final component of the model resource name. This value may be up to 63 characters, and valid characters are `[a-z0-9_-]`. The first character cannot be a number or hyphen.
  /// [modelToUpload] Describes the Model that may be uploaded (via ModelService.UploadModel) by this TrainingPipeline. The TrainingPipeline's training_task_definition should make clear whether this Model description should be populated, and if there are any special requirements regarding how it should be filled. If nothing is mentioned in the training_task_definition, then it should be assumed that this field should not be filled and the training task either uploads the Model without a need of this information, or that training task does not support uploading a Model as part of the pipeline. When the Pipeline's state becomes `PIPELINE_STATE_SUCCEEDED` and the trained Model had been uploaded into Vertex AI, then the model_to_upload's resource name is populated. The Model is always uploaded into the Project and Location in which this pipeline is.
  /// [parentModel] Optional. When specify this field, the `model_to_upload` will not be uploaded as a new model, instead, it will become a new version of this `parent_model`.
  /// [project] Optional.
  /// [trainingTaskDefinition] A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  /// [trainingTaskInputs] The training task's parameter(s), as specified in the training_task_definition's `inputs`.
  TrainingPipelineArgs({
    required String displayName,
    GoogleCloudAiplatformV1EncryptionSpec? encryptionSpec,
    GoogleCloudAiplatformV1InputDataConfig? inputDataConfig,
    Map<String, String>? labels,
    String? location,
    String? modelId,
    GoogleCloudAiplatformV1Model? modelToUpload,
    String? parentModel,
    String? project,
    required String trainingTaskDefinition,
    required dynamic trainingTaskInputs,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      encryptionSpec = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(encryptionSpec),
      inputDataConfig = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1InputDataConfig>(inputDataConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      modelId = pulumi.Input.asOptionalInput<String>(modelId),
      modelToUpload = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1Model>(modelToUpload),
      parentModel = pulumi.Input.asOptionalInput<String>(parentModel),
      project = pulumi.Input.asOptionalInput<String>(project),
      trainingTaskDefinition = pulumi.Input.asInput<String>(trainingTaskDefinition),
      trainingTaskInputs = pulumi.Input.asInput<dynamic>(trainingTaskInputs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'inputDataConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1InputDataConfig, Map<String, dynamic>>(inputDataConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'modelId': ?modelId,
      'modelToUpload': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1Model, Map<String, dynamic>>(modelToUpload, (value) => value.toMap()),
      'parentModel': ?parentModel,
      'project': ?project,
      'trainingTaskDefinition': trainingTaskDefinition,
      'trainingTaskInputs': trainingTaskInputs,
    };
  }

  factory TrainingPipelineArgs.fromMap(Map<String, dynamic> map) {
    return TrainingPipelineArgs(
      displayName: map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null ? null : GoogleCloudAiplatformV1EncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>()),
      inputDataConfig: map['inputDataConfig'] == null ? null : GoogleCloudAiplatformV1InputDataConfig.fromMap((map['inputDataConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      modelId: map['modelId'] == null ? null : map['modelId'] as String,
      modelToUpload: map['modelToUpload'] == null ? null : GoogleCloudAiplatformV1Model.fromMap((map['modelToUpload'] as Map).cast<String, dynamic>()),
      parentModel: map['parentModel'] == null ? null : map['parentModel'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      trainingTaskDefinition: map['trainingTaskDefinition'] as String,
      trainingTaskInputs: map['trainingTaskInputs'],
    );
  }
}

