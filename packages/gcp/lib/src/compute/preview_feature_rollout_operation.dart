// ignore_for_file: unused_element, unnecessary_cast

import 'preview_feature_rollout_operation_rollout_input.dart';

class PreviewFeatureRolloutOperation {
  /// The input for the rollout operation.
  /// Structure is documented below.
  final PreviewFeatureRolloutOperationRolloutInput? rolloutInput;

  /// Creates a new [PreviewFeatureRolloutOperation].
  /// [rolloutInput] The input for the rollout operation.
  PreviewFeatureRolloutOperation({this.rolloutInput});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rolloutInput': ?rolloutInput == null ? null : rolloutInput!.toMap(),
    };
  }

  factory PreviewFeatureRolloutOperation.fromMap(Map<String, dynamic> map) {
    return PreviewFeatureRolloutOperation(
      rolloutInput: map['rolloutInput'] == null
          ? null
          : PreviewFeatureRolloutOperationRolloutInput.fromMap(
              (map['rolloutInput'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
