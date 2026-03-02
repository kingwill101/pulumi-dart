// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The stand-by agent scheme is determined based on historical demand.
class AutomaticResourcePredictionsProfileResponse {
  /// Determines how the stand-by scheme should be provided.
  /// Expected value is 'Automatic'.
  final pulumi.Input<String> kind;
  /// Determines the balance between cost and performance.
  final pulumi.Input<String>? predictionPreference;

  /// Creates a new [AutomaticResourcePredictionsProfileResponse].
  /// [kind] Determines how the stand-by scheme should be provided.
  /// [predictionPreference] Determines the balance between cost and performance.
  AutomaticResourcePredictionsProfileResponse({
    required this.kind,
    this.predictionPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'predictionPreference': ?predictionPreference,
    };
  }

  factory AutomaticResourcePredictionsProfileResponse.fromMap(Map<String, dynamic> map) {
    return AutomaticResourcePredictionsProfileResponse(
      kind: (map['kind'] as String).input(),
      predictionPreference: map['predictionPreference'] == null ? null : (map['predictionPreference']! as String).input(),
    );
  }
}

