// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'model_state.dart';
import 'tf_lite_model.dart';

/// The set of arguments for Model.
class ModelArgs {
  /// The name of the model to create. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores(_) and ASCII digits 0-9. It must start with a letter.
  final Input<String> displayName;

  /// The resource name of the Model. Model names have the form `projects/{project_id}/models/{model_id}` The name is ignored when creating a model.
  final Input<String>? name;
  final Input<String>? project;

  /// State common to all model types. Includes publishing and validation information.
  final Input<ModelState>? state;

  /// User defined tags which can be used to group/filter models during listing
  final Input<List<String>>? tags;

  /// A TFLite Model
  final Input<TfLiteModel>? tfliteModel;

  ModelArgs({
    required this.displayName,
    this.name,
    this.project,
    this.state,
    this.tags,
    this.tfliteModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] =
          Input.mapOptionalInputValue<ModelState, Map<String, dynamic>>(
              stateValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tfliteModelValue = tfliteModel;
    if (tfliteModelValue != null) {
      map['tfliteModel'] =
          Input.mapOptionalInputValue<TfLiteModel, Map<String, dynamic>>(
              tfliteModelValue, (value) => value.toMap());
    }
    return map;
  }

  factory ModelArgs.fromMap(Map<String, dynamic> map) {
    return ModelArgs(
      displayName: Input.asInput<String>(map['displayName']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      state: Input.asOptionalInput<ModelState>(map['state']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
      tfliteModel: Input.asOptionalInput<TfLiteModel>(map['tfliteModel']),
    );
  }
}
