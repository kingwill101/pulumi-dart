// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'window_start_time_response.dart';

/// Definition of OffPeakWindow
class OffPeakWindowResponse {
  /// &lt;p&gt;A custom start time for the off-peak window, in Coordinated Universal Time (UTC). The window length will always be 10 hours, so you can't specify an end time. For example, if you specify 11:00 P.M. UTC as a start time, the end time will automatically be set to 9:00 A.M.&lt;/p&gt;
  final pulumi.Input<WindowStartTimeResponse>? windowStartTime;

  /// Creates a new [OffPeakWindowResponse].
  /// [windowStartTime] &lt;p&gt;A custom start time for the off-peak window, in Coordinated Universal Time (UTC). The window length will always be 10 hours, so you can't specify an end time. For example, if you specify 11:00 P.M. UTC as a start time, the end time will automatically be set to 9:00 A.M.&lt;/p&gt;
  OffPeakWindowResponse({this.windowStartTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowStartTime':
          ?pulumi.Input.mapOptionalInputValue<
            WindowStartTimeResponse,
            Map<String, dynamic>
          >(windowStartTime, (value) => value.toMap()),
    };
  }

  factory OffPeakWindowResponse.fromMap(Map<String, dynamic> map) {
    return OffPeakWindowResponse(
      windowStartTime: (() {
        final guardedValue = map['windowStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WindowStartTimeResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
