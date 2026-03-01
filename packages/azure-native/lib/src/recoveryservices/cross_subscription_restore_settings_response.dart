// ignore_for_file: unused_element, unnecessary_cast


/// Settings for Cross Subscription Restore Settings
class CrossSubscriptionRestoreSettingsResponse {
  final String? crossSubscriptionRestoreState;

  /// Creates a new [CrossSubscriptionRestoreSettingsResponse].
  /// [crossSubscriptionRestoreState] Optional.
  CrossSubscriptionRestoreSettingsResponse({
    this.crossSubscriptionRestoreState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossSubscriptionRestoreState': ?crossSubscriptionRestoreState,
    };
  }

  factory CrossSubscriptionRestoreSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CrossSubscriptionRestoreSettingsResponse(
      crossSubscriptionRestoreState: map['crossSubscriptionRestoreState'] == null ? null : map['crossSubscriptionRestoreState'] as String,
    );
  }
}

