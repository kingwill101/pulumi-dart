// ignore_for_file: unused_element, unnecessary_cast

/// Status of sessions created for this environment.
class GoogleCloudDataplexV1EnvironmentSessionStatusResponse {
  /// Queries over sessions to mark whether the environment is currently active or not
  final bool active;

  /// Creates a new [GoogleCloudDataplexV1EnvironmentSessionStatusResponse].
  /// [active] Queries over sessions to mark whether the environment is currently active or not
  GoogleCloudDataplexV1EnvironmentSessionStatusResponse({
    required this.active,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['active'] = active;
    return map;
  }

  factory GoogleCloudDataplexV1EnvironmentSessionStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentSessionStatusResponse(
      active: map['active'] as bool,
    );
  }
}
