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

  /// Creates a new [RoboStartingIntentResponse].
  /// [launcherActivity] An intent that starts the main launcher activity.
  /// [noActivity] Skips the starting activity
  /// [startActivity] An intent that starts an activity with specific details.
  /// [timeout] Timeout in seconds for each intent.
  RoboStartingIntentResponse({
    required this.launcherActivity,
    required this.noActivity,
    required this.startActivity,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launcherActivity': launcherActivity,
      'noActivity': noActivity,
      'startActivity': startActivity.toMap(),
      'timeout': timeout,
    };
  }

  factory RoboStartingIntentResponse.fromMap(Map<String, dynamic> map) {
    return RoboStartingIntentResponse(
      launcherActivity: (map['launcherActivity'] as Map)
          .cast<String, dynamic>(),
      noActivity: (map['noActivity'] as Map).cast<String, dynamic>(),
      startActivity: StartActivityIntentResponse.fromMap(
        (map['startActivity'] as Map).cast<String, dynamic>(),
      ),
      timeout: map['timeout'] as String,
    );
  }
}
