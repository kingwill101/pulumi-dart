// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Api properties.
class ApiPropertiesResponse {
  /// Interval in minutes for which the weather data for the api needs to be refreshed.
  final pulumi.Input<int>? apiFreshnessTimeInMinutes;

  /// Creates a new [ApiPropertiesResponse].
  /// [apiFreshnessTimeInMinutes] Interval in minutes for which the weather data for the api needs to be refreshed.
  ApiPropertiesResponse({
    this.apiFreshnessTimeInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiFreshnessTimeInMinutes': ?apiFreshnessTimeInMinutes,
    };
  }

  factory ApiPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApiPropertiesResponse(
      apiFreshnessTimeInMinutes: (() { final guardedValue = map['apiFreshnessTimeInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

