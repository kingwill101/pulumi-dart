import 'package:pulumi/pulumi.dart';
import 'model_args.dart';
import 'model_state_response.dart';
import 'operation_response5.dart';
import 'tf_lite_model_response.dart';

/// Creates a model in Firebase ML. The longrunning operation will eventually return a Model
class Model extends CustomResource {
  /// Lists operation ids associated with this model whose status is NOT done.
  late final Output<List<OperationResponse5>> activeOperations;

  /// Timestamp when this model was created in Firebase ML.
  late final Output<String> createTime;

  /// The name of the model to create. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores(_) and ASCII digits 0-9. It must start with a letter.
  late final Output<String> displayName;

  /// See RFC7232 https://tools.ietf.org/html/rfc7232#section-2.3
  late final Output<String> etag;

  /// The model_hash will change if a new file is available for download.
  late final Output<String> modelHash;

  /// The resource name of the Model. Model names have the form `projects/{project_id}/models/{model_id}` The name is ignored when creating a model.
  late final Output<String> name;
  late final Output<String> project;

  /// State common to all model types. Includes publishing and validation information.
  late final Output<ModelStateResponse> state;

  /// User defined tags which can be used to group/filter models during listing
  late final Output<List<String>> tags;

  /// A TFLite Model
  late final Output<TfLiteModelResponse> tfliteModel;

  /// Timestamp when this model was updated in Firebase ML.
  late final Output<String> updateTime;

  Model(
    String name, {
    ModelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:firebaseml/v1beta2:Model',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activeOperations = Output.createUnknown<List<OperationResponse5>>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.modelHash = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<ModelStateResponse>();
    this.tags = Output.createUnknown<List<String>>();
    this.tfliteModel = Output.createUnknown<TfLiteModelResponse>();
    this.updateTime = Output.createUnknown<String>();
  }
}
