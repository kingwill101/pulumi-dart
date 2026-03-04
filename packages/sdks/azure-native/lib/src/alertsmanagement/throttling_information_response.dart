// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional throttling information for the alert rule.
class ThrottlingInformationResponse {
  /// The required duration (in ISO8601 format) to wait before notifying on the alert rule again. The time granularity must be in minutes and minimum value is 0 minutes
  final pulumi.Input<String>? duration;

  /// Creates a new [ThrottlingInformationResponse].
  /// [duration] The required duration (in ISO8601 format) to wait before notifying on the alert rule again. The time granularity must be in minutes and minimum value is 0 minutes
  ThrottlingInformationResponse({this.duration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'duration': ?duration};
  }

  factory ThrottlingInformationResponse.fromMap(Map<String, dynamic> map) {
    return ThrottlingInformationResponse(
      duration: (() {
        final guardedValue = map['duration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
