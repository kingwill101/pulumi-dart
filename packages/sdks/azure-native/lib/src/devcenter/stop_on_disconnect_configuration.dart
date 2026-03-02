// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Stop on disconnect configuration settings for Dev Boxes created in this pool.
class StopOnDisconnectConfiguration {
  /// The specified time in minutes to wait before stopping a Dev Box once disconnect is detected.
  final pulumi.Input<int>? gracePeriodMinutes;
  /// Whether the feature to stop the Dev Box on disconnect once the grace period has lapsed is enabled.
  final pulumi.Input<String>? status;

  /// Creates a new [StopOnDisconnectConfiguration].
  /// [gracePeriodMinutes] The specified time in minutes to wait before stopping a Dev Box once disconnect is detected.
  /// [status] Whether the feature to stop the Dev Box on disconnect once the grace period has lapsed is enabled.
  StopOnDisconnectConfiguration({
    this.gracePeriodMinutes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gracePeriodMinutes': ?gracePeriodMinutes,
      'status': ?status,
    };
  }

  factory StopOnDisconnectConfiguration.fromMap(Map<String, dynamic> map) {
    return StopOnDisconnectConfiguration(
      gracePeriodMinutes: map['gracePeriodMinutes'] == null ? null : (map['gracePeriodMinutes'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

