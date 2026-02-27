// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../preview_feature_rollout_operation/preview_feature_rollout_operation.dart';

/// The set of arguments for PreviewFeature.
class PreviewFeatureArgs {
  /// The activation status of the preview feature.
  /// Possible values are: `ENABLED`, `ACTIVATION_STATE_UNSPECIFIED`.
  final pulumi.Input<String> activationStatus;

  /// The name of the preview feature.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The rollout operation of the feature.
  /// Structure is documented below.
  final pulumi.Input<PreviewFeatureRolloutOperation>? rolloutOperation;

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
      map['rolloutOperation'] = pulumi.Input.mapOptionalInputValue<
              PreviewFeatureRolloutOperation, Map<String, dynamic>>(
          rolloutOperationValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreviewFeatureArgs.fromMap(Map<String, dynamic> map) {
    return PreviewFeatureArgs(
      activationStatus: pulumi.Input.asInput<String>(map['activationStatus']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rolloutOperation:
          pulumi.Input.asOptionalInput<PreviewFeatureRolloutOperation>(
              map['rolloutOperation']),
    );
  }
}
