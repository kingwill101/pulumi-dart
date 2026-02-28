// ignore_for_file: unused_element, unnecessary_cast

class GroupInsightsConfiguration {
  /// Specifies whether insights are enabled.
  final bool insightsEnabled;

  /// Specifies whether insight notifications are enabled.
  final bool? notificationsEnabled;

  /// Creates a new [GroupInsightsConfiguration].
  /// [insightsEnabled] Specifies whether insights are enabled.
  /// [notificationsEnabled] Specifies whether insight notifications are enabled.
  GroupInsightsConfiguration({
    required this.insightsEnabled,
    this.notificationsEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insightsEnabled'] = insightsEnabled;
    final notificationsEnabledValue = notificationsEnabled;
    if (notificationsEnabledValue != null) {
      map['notificationsEnabled'] = notificationsEnabledValue;
    }
    return map;
  }

  factory GroupInsightsConfiguration.fromMap(Map<String, dynamic> map) {
    return GroupInsightsConfiguration(
      insightsEnabled: map['insightsEnabled'] as bool,
      notificationsEnabled: map['notificationsEnabled'] == null
          ? null
          : map['notificationsEnabled'] as bool,
    );
  }
}
