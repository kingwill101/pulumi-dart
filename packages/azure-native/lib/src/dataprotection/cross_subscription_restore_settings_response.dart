// ignore_for_file: unused_element, unnecessary_cast


/// CrossSubscriptionRestore Settings
class CrossSubscriptionRestoreSettingsResponse {
  /// CrossSubscriptionRestore state
  final String? state;

  /// Creates a new [CrossSubscriptionRestoreSettingsResponse].
  /// [state] CrossSubscriptionRestore state
  CrossSubscriptionRestoreSettingsResponse({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory CrossSubscriptionRestoreSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CrossSubscriptionRestoreSettingsResponse(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

