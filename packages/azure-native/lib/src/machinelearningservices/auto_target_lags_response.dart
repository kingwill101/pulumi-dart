// ignore_for_file: unused_element, unnecessary_cast


class AutoTargetLagsResponse {
  /// Target lags selection modes.
  /// Expected value is 'Auto'.
  final String mode;

  /// Creates a new [AutoTargetLagsResponse].
  /// [mode] Target lags selection modes.
  AutoTargetLagsResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoTargetLagsResponse.fromMap(Map<String, dynamic> map) {
    return AutoTargetLagsResponse(
      mode: map['mode'] as String,
    );
  }
}

