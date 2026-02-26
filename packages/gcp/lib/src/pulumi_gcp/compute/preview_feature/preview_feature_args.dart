// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../preview_feature_rollout_operation/preview_feature_rollout_operation.dart';

/// The set of arguments for PreviewFeature.
class PreviewFeatureArgs {
  /// The activation status of the preview feature.
  /// Possible values are: `ENABLED`, `ACTIVATION_STATE_UNSPECIFIED`.
  final Input<String> activationStatus;

  /// The name of the preview feature.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The rollout operation of the feature.
  /// Structure is documented below.
  final Input<PreviewFeatureRolloutOperation>? rolloutOperation;

  PreviewFeatureArgs({
    required this.activationStatus,
    this.name,
    this.project,
    this.rolloutOperation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activationStatus'] = activationStatus;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rolloutOperationValue = rolloutOperation;
    if (rolloutOperationValue != null) {
      map['rolloutOperation'] = Input.mapOptionalInputValue<
              PreviewFeatureRolloutOperation, Map<String, dynamic>>(
          rolloutOperationValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreviewFeatureArgs.fromMap(Map<String, dynamic> map) {
    return PreviewFeatureArgs(
      activationStatus: Input.asInput<String>(map['activationStatus']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rolloutOperation: Input.asOptionalInput<PreviewFeatureRolloutOperation>(
          map['rolloutOperation']),
    );
  }
}
