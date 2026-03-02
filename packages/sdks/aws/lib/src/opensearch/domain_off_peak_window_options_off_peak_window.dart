// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_off_peak_window_options_off_peak_window_window_start_time.dart';

class DomainOffPeakWindowOptionsOffPeakWindow {
  /// 10h window for updates
  final pulumi.Input<DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime>? windowStartTime;

  /// Creates a new [DomainOffPeakWindowOptionsOffPeakWindow].
  /// [windowStartTime] 10h window for updates
  DomainOffPeakWindowOptionsOffPeakWindow({
    this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowStartTime': ?pulumi.Input.mapOptionalInputValue<DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime, Map<String, dynamic>>(windowStartTime, (value) => value.toMap()),
    };
  }

  factory DomainOffPeakWindowOptionsOffPeakWindow.fromMap(Map<String, dynamic> map) {
    return DomainOffPeakWindowOptionsOffPeakWindow(
      windowStartTime: map['windowStartTime'] == null ? null : (DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime.fromMap((map['windowStartTime'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

