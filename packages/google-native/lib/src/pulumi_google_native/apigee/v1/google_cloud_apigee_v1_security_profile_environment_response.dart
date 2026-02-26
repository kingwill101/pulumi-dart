// ignore_for_file: unused_element, unnecessary_cast

/// Environment information of attached environments. Scoring an environment is enabled only if it is attached to a security profile.
class GoogleCloudApigeeV1SecurityProfileEnvironmentResponse {
  /// Time at which environment was attached to the security profile.
  final String attachTime;

  /// Name of the environment.
  final String environment;

  GoogleCloudApigeeV1SecurityProfileEnvironmentResponse({
    required this.attachTime,
    required this.environment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachTime'] = attachTime;
    map['environment'] = environment;
    return map;
  }

  factory GoogleCloudApigeeV1SecurityProfileEnvironmentResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityProfileEnvironmentResponse(
      attachTime: map['attachTime'] as String,
      environment: map['environment'] as String,
    );
  }
}
