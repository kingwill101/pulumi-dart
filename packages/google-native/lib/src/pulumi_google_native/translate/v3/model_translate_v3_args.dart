// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Model.
class ModelTranslateV3Args {
  /// The dataset from which the model is trained, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  final pulumi.Input<String>? dataset;

  /// The name of the model to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;

  /// The resource name of the model, in form of `projects/{project-number-or-id}/locations/{location_id}/models/{model_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  ModelTranslateV3Args({
    this.dataset,
    this.displayName,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetValue = dataset;
    if (datasetValue != null) {
      map['dataset'] = datasetValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ModelTranslateV3Args.fromMap(Map<String, dynamic> map) {
    return ModelTranslateV3Args(
      dataset: pulumi.Input.asOptionalInput<String>(map['dataset']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
