// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoTargetLagsResponse {
  /// Target lags selection modes.
  /// Expected value is 'Auto'.
  final pulumi.Input<String> mode;

  /// Creates a new [AutoTargetLagsResponse].
  /// [mode] Target lags selection modes.
  const AutoTargetLagsResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoTargetLagsResponse.fromMap(Map<String, dynamic> map) {
    return AutoTargetLagsResponse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
