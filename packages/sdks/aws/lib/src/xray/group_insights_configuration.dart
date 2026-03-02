// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupInsightsConfiguration {
  /// Specifies whether insights are enabled.
  final pulumi.Input<bool> insightsEnabled;
  /// Specifies whether insight notifications are enabled.
  final pulumi.Input<bool>? notificationsEnabled;

  /// Creates a new [GroupInsightsConfiguration].
  /// [insightsEnabled] Specifies whether insights are enabled.
  /// [notificationsEnabled] Specifies whether insight notifications are enabled.
  GroupInsightsConfiguration({
    required this.insightsEnabled,
    this.notificationsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insightsEnabled': insightsEnabled,
      'notificationsEnabled': ?notificationsEnabled,
    };
  }

  factory GroupInsightsConfiguration.fromMap(Map<String, dynamic> map) {
    return GroupInsightsConfiguration(
      insightsEnabled: (map['insightsEnabled'] as bool).input(),
      notificationsEnabled: map['notificationsEnabled'] == null ? null : (map['notificationsEnabled'] as bool).input(),
    );
  }
}

