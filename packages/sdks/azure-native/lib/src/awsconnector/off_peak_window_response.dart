// ignore_for_file: unused_element, unnecessary_cast

import 'window_start_time_response.dart';

/// Definition of OffPeakWindow
class OffPeakWindowResponse {
  /// <p>A custom start time for the off-peak window, in Coordinated Universal Time (UTC). The window length will always be 10 hours, so you can't specify an end time. For example, if you specify 11:00 P.M. UTC as a start time, the end time will automatically be set to 9:00 A.M.</p>
  final WindowStartTimeResponse? windowStartTime;

  /// Creates a new [OffPeakWindowResponse].
  /// [windowStartTime] <p>A custom start time for the off-peak window, in Coordinated Universal Time (UTC). The window length will always be 10 hours, so you can't specify an end time. For example, if you specify 11:00 P.M. UTC as a start time, the end time will automatically be set to 9:00 A.M.</p>
  OffPeakWindowResponse({
    this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowStartTime': ?windowStartTime == null ? null : windowStartTime!.toMap(),
    };
  }

  factory OffPeakWindowResponse.fromMap(Map<String, dynamic> map) {
    return OffPeakWindowResponse(
      windowStartTime: map['windowStartTime'] == null ? null : WindowStartTimeResponse.fromMap((map['windowStartTime'] as Map).cast<String, dynamic>()),
    );
  }
}

