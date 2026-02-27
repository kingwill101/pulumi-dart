import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_args.dart';
import 'model_state_response.dart';
import 'operation_response_firebaseml_v1beta2.dart';
import 'tf_lite_model_response.dart';

/// Creates a model in Firebase ML. The longrunning operation will eventually return a Model
class Model extends pulumi.CustomResource {
  /// Lists operation ids associated with this model whose status is NOT done.
  late final pulumi.Output<List<OperationResponseFirebasemlV1beta2>>
      activeOperations;

  /// Timestamp when this model was created in Firebase ML.
  late final pulumi.Output<String> createTime;

  /// The name of the model to create. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores(_) and ASCII digits 0-9. It must start with a letter.
  late final pulumi.Output<String> displayName;

  /// See RFC7232 https://tools.ietf.org/html/rfc7232#section-2.3
  late final pulumi.Output<String> etag;

  /// The model_hash will change if a new file is available for download.
  late final pulumi.Output<String> modelHash;

  /// The resource name of the Model. Model names have the form `projects/{project_id}/models/{model_id}` The name is ignored when creating a model.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// State common to all model types. Includes publishing and validation information.
  late final pulumi.Output<ModelStateResponse> state;

  /// User defined tags which can be used to group/filter models during listing
  late final pulumi.Output<List<String>> tags;

  /// A TFLite Model
  late final pulumi.Output<TfLiteModelResponse> tfliteModel;

  /// Timestamp when this model was updated in Firebase ML.
  late final pulumi.Output<String> updateTime;

  Model(
    String name, {
    ModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:firebaseml/v1beta2:Model',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeOperations =
        registerOutput<List<OperationResponseFirebasemlV1beta2>>(
            'activeOperations');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.modelHash = registerOutput<String>('modelHash');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<ModelStateResponse>('state');
    this.tags = registerOutput<List<String>>('tags');
    this.tfliteModel = registerOutput<TfLiteModelResponse>('tfliteModel');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
