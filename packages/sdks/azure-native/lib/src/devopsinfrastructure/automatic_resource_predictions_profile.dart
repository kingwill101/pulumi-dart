// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The stand-by agent scheme is determined based on historical demand.
class AutomaticResourcePredictionsProfile {
  /// Determines how the stand-by scheme should be provided.
  /// Expected value is 'Automatic'.
  final pulumi.Input<String> kind;
  /// Determines the balance between cost and performance.
  final pulumi.Input<String>? predictionPreference;

  /// Creates a new [AutomaticResourcePredictionsProfile].
  /// [kind] Determines how the stand-by scheme should be provided.
  /// [predictionPreference] Determines the balance between cost and performance.
  AutomaticResourcePredictionsProfile({
    required this.kind,
    this.predictionPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'predictionPreference': ?predictionPreference,
    };
  }

  factory AutomaticResourcePredictionsProfile.fromMap(Map<String, dynamic> map) {
    return AutomaticResourcePredictionsProfile(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      predictionPreference: (() { final guardedValue = map['predictionPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

