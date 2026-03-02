// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'window_start_time.dart';

/// Definition of OffPeakWindow
class OffPeakWindow {
  /// <p>A custom start time for the off-peak window, in Coordinated Universal Time (UTC). The window length will always be 10 hours, so you can't specify an end time. For example, if you specify 11:00 P.M. UTC as a start time, the end time will automatically be set to 9:00 A.M.</p>
  final pulumi.Input<WindowStartTime>? windowStartTime;

  /// Creates a new [OffPeakWindow].
  /// [windowStartTime] <p>A custom start time for the off-peak window, in Coordinated Universal Time (UTC). The window length will always be 10 hours, so you can't specify an end time. For example, if you specify 11:00 P.M. UTC as a start time, the end time will automatically be set to 9:00 A.M.</p>
  OffPeakWindow({
    this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowStartTime': ?pulumi.Input.mapOptionalInputValue<WindowStartTime, Map<String, dynamic>>(windowStartTime, (value) => value.toMap()),
    };
  }

  factory OffPeakWindow.fromMap(Map<String, dynamic> map) {
    return OffPeakWindow(
      windowStartTime: map['windowStartTime'] == null ? null : (WindowStartTime.fromMap((map['windowStartTime'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

