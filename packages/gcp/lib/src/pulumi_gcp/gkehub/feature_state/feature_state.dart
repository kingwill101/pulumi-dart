// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../feature_state_state/feature_state_state.dart';

class FeatureState {
  /// (Output)
  /// Output only. The "running state" of the Feature in this Hub.
  /// Structure is documented below.
  final List<FeatureStateState>? states;

  FeatureState({
    this.states,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final statesValue = states;
    if (statesValue != null) {
      map['states'] = Input.encodeList<FeatureStateState, Map<String, dynamic>>(
          statesValue, (value) => value.toMap());
    }
    return map;
  }

  factory FeatureState.fromMap(Map<String, dynamic> map) {
    return FeatureState(
      states: map['states'] == null
          ? null
          : Input.decodeList<FeatureStateState>(
              map['states'],
              (value) => FeatureStateState.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
