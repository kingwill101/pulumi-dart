// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentLastDeploymentFailureReason {
  final String code;
  final String message;

  /// Creates a new [EnvironmentLastDeploymentFailureReason].
  /// [code] Required.
  /// [message] Required.
  EnvironmentLastDeploymentFailureReason({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    return map;
  }

  factory EnvironmentLastDeploymentFailureReason.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentLastDeploymentFailureReason(
      code: map['code'] as String,
      message: map['message'] as String,
    );
  }
}
