// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_feature_state_state/get_feature_state_state.dart';

class GetFeatureState {
  /// Output only. The "running state" of the Feature in this Hub.
  final List<GetFeatureStateState> states;

  GetFeatureState({
    required this.states,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['states'] =
        Input.encodeList<GetFeatureStateState, Map<String, dynamic>>(
            states, (value) => value.toMap());
    return map;
  }

  factory GetFeatureState.fromMap(Map<String, dynamic> map) {
    return GetFeatureState(
      states: Input.decodeList<GetFeatureStateState>(
          map['states'],
          (value) => GetFeatureStateState.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
