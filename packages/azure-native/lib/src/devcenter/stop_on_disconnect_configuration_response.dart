// ignore_for_file: unused_element, unnecessary_cast


/// Stop on disconnect configuration settings for Dev Boxes created in this pool.
class StopOnDisconnectConfigurationResponse {
  /// The specified time in minutes to wait before stopping a Dev Box once disconnect is detected.
  final int? gracePeriodMinutes;
  /// Whether the feature to stop the Dev Box on disconnect once the grace period has lapsed is enabled.
  final String? status;

  /// Creates a new [StopOnDisconnectConfigurationResponse].
  /// [gracePeriodMinutes] The specified time in minutes to wait before stopping a Dev Box once disconnect is detected.
  /// [status] Whether the feature to stop the Dev Box on disconnect once the grace period has lapsed is enabled.
  StopOnDisconnectConfigurationResponse({
    this.gracePeriodMinutes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gracePeriodMinutes': ?gracePeriodMinutes,
      'status': ?status,
    };
  }

  factory StopOnDisconnectConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return StopOnDisconnectConfigurationResponse(
      gracePeriodMinutes: map['gracePeriodMinutes'] == null ? null : map['gracePeriodMinutes'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

