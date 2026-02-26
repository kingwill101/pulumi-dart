// ignore_for_file: unused_element, unnecessary_cast

import '../preview_feature_rollout_operation_rollout_input/preview_feature_rollout_operation_rollout_input.dart';

class PreviewFeatureRolloutOperation {
  /// The input for the rollout operation.
  /// Structure is documented below.
  final PreviewFeatureRolloutOperationRolloutInput? rolloutInput;

  PreviewFeatureRolloutOperation({
    this.rolloutInput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rolloutInputValue = rolloutInput;
    if (rolloutInputValue != null) {
      map['rolloutInput'] = rolloutInputValue.toMap();
    }
    return map;
  }

  factory PreviewFeatureRolloutOperation.fromMap(Map<String, dynamic> map) {
    return PreviewFeatureRolloutOperation(
      rolloutInput: map['rolloutInput'] == null
          ? null
          : PreviewFeatureRolloutOperationRolloutInput.fromMap(
              (map['rolloutInput'] as Map).cast<String, dynamic>()),
    );
  }
}
