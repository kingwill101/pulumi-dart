// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_state_state.dart';

class GetFeatureState {
  /// Output only. The "running state" of the Feature in this Hub.
  final List<GetFeatureStateState> states;

  /// Creates a new [GetFeatureState].
  /// [states] Output only. The "running state" of the Feature in this Hub.
  GetFeatureState({required this.states});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'states':
          pulumi.Input.encodeList<GetFeatureStateState, Map<String, dynamic>>(
            states,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetFeatureState.fromMap(Map<String, dynamic> map) {
    return GetFeatureState(
      states: pulumi.Input.decodeList<GetFeatureStateState>(
        map['states'],
        (value) => GetFeatureStateState.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
