// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Stop on disconnect configuration settings for Dev Boxes created in this pool.
class StopOnDisconnectConfigurationResponse {
  /// The specified time in minutes to wait before stopping a Dev Box once disconnect is detected.
  final pulumi.Input<int>? gracePeriodMinutes;
  /// Whether the feature to stop the Dev Box on disconnect once the grace period has lapsed is enabled.
  final pulumi.Input<String>? status;

  /// Creates a new [StopOnDisconnectConfigurationResponse].
  /// [gracePeriodMinutes] The specified time in minutes to wait before stopping a Dev Box once disconnect is detected.
  /// [status] Whether the feature to stop the Dev Box on disconnect once the grace period has lapsed is enabled.
  const StopOnDisconnectConfigurationResponse({
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
      gracePeriodMinutes: (() { final guardedValue = map['gracePeriodMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
