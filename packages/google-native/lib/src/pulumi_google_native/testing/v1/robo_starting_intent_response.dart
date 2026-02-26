// ignore_for_file: unused_element, unnecessary_cast

import 'start_activity_intent_response.dart';

/// Message for specifying the start activities to crawl.
class RoboStartingIntentResponse {
  /// An intent that starts the main launcher activity.
  final Map<String, dynamic> launcherActivity;

  /// Skips the starting activity
  final Map<String, dynamic> noActivity;

  /// An intent that starts an activity with specific details.
  final StartActivityIntentResponse startActivity;

  /// Timeout in seconds for each intent.
  final String timeout;

  RoboStartingIntentResponse({
    required this.launcherActivity,
    required this.noActivity,
    required this.startActivity,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['launcherActivity'] = launcherActivity;
    map['noActivity'] = noActivity;
    map['startActivity'] = startActivity.toMap();
    map['timeout'] = timeout;
    return map;
  }

  factory RoboStartingIntentResponse.fromMap(Map<String, dynamic> map) {
    return RoboStartingIntentResponse(
      launcherActivity:
          (map['launcherActivity'] as Map).cast<String, dynamic>(),
      noActivity: (map['noActivity'] as Map).cast<String, dynamic>(),
      startActivity: StartActivityIntentResponse.fromMap(
          (map['startActivity'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] as String,
    );
  }
}
