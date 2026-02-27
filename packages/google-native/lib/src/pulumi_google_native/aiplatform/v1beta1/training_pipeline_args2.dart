// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_input_data_config.dart';
import 'google_cloud_aiplatform_v1beta1_model.dart';

/// The set of arguments for TrainingPipeline.
class TrainingPipelineArgs2 {
  /// The user-defined name of this TrainingPipeline.
  final Input<String> displayName;

  /// Customer-managed encryption key spec for a TrainingPipeline. If set, this TrainingPipeline will be secured by this key. Note: Model trained by this TrainingPipeline is also secured by this key if model_to_upload is not set separately.
  final Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;

  /// Specifies Vertex AI owned input data that may be used for training the Model. The TrainingPipeline's training_task_definition should make clear whether this config is used and if there are any special requirements on how it should be filled. If nothing about this config is mentioned in the training_task_definition, then it should be assumed that the TrainingPipeline does not depend on this configuration.
  final Input<GoogleCloudAiplatformV1beta1InputDataConfig>? inputDataConfig;

  /// The labels with user-defined metadata to organize TrainingPipelines. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. The ID to use for the uploaded Model, which will become the final component of the model resource name. This value may be up to 63 characters, and valid characters are `[a-z0-9_-]`. The first character cannot be a number or hyphen.
  final Input<String>? modelId;

  /// Describes the Model that may be uploaded (via ModelService.UploadModel) by this TrainingPipeline. The TrainingPipeline's training_task_definition should make clear whether this Model description should be populated, and if there are any special requirements regarding how it should be filled. If nothing is mentioned in the training_task_definition, then it should be assumed that this field should not be filled and the training task either uploads the Model without a need of this information, or that training task does not support uploading a Model as part of the pipeline. When the Pipeline's state becomes `PIPELINE_STATE_SUCCEEDED` and the trained Model had been uploaded into Vertex AI, then the model_to_upload's resource name is populated. The Model is always uploaded into the Project and Location in which this pipeline is.
  final Input<GoogleCloudAiplatformV1beta1Model>? modelToUpload;

  /// Optional. When specify this field, the `model_to_upload` will not be uploaded as a new model, instead, it will become a new version of this `parent_model`.
  final Input<String>? parentModel;
  final Input<String>? project;

  /// A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final Input<String> trainingTaskDefinition;

  /// The training task's parameter(s), as specified in the training_task_definition's `inputs`.
  final Input<dynamic> trainingTaskInputs;

  TrainingPipelineArgs2({
    required this.displayName,
    this.encryptionSpec,
    this.inputDataConfig,
    this.labels,
    this.location,
    this.modelId,
    this.modelToUpload,
    this.parentModel,
    this.project,
    required this.trainingTaskDefinition,
    required this.trainingTaskInputs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final inputDataConfigValue = inputDataConfig;
    if (inputDataConfigValue != null) {
      map['inputDataConfig'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1InputDataConfig,
          Map<String, dynamic>>(inputDataConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final modelIdValue = modelId;
    if (modelIdValue != null) {
      map['modelId'] = modelIdValue;
    }
    final modelToUploadValue = modelToUpload;
    if (modelToUploadValue != null) {
      map['modelToUpload'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1Model,
          Map<String, dynamic>>(modelToUploadValue, (value) => value.toMap());
    }
    final parentModelValue = parentModel;
    if (parentModelValue != null) {
      map['parentModel'] = parentModelValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['trainingTaskDefinition'] = trainingTaskDefinition;
    map['trainingTaskInputs'] = trainingTaskInputs;
    return map;
  }

  factory TrainingPipelineArgs2.fromMap(Map<String, dynamic> map) {
    return TrainingPipelineArgs2(
      displayName: Input.asInput<String>(map['displayName']),
      encryptionSpec:
          Input.asOptionalInput<GoogleCloudAiplatformV1beta1EncryptionSpec>(
              map['encryptionSpec']),
      inputDataConfig:
          Input.asOptionalInput<GoogleCloudAiplatformV1beta1InputDataConfig>(
              map['inputDataConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      modelId: Input.asOptionalInput<String>(map['modelId']),
      modelToUpload: Input.asOptionalInput<GoogleCloudAiplatformV1beta1Model>(
          map['modelToUpload']),
      parentModel: Input.asOptionalInput<String>(map['parentModel']),
      project: Input.asOptionalInput<String>(map['project']),
      trainingTaskDefinition:
          Input.asInput<String>(map['trainingTaskDefinition']),
      trainingTaskInputs: Input.asInput<dynamic>(map['trainingTaskInputs']),
    );
  }
}
