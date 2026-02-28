// ignore_for_file: unused_element, unnecessary_cast

import 'domain_off_peak_window_options_off_peak_window_window_start_time.dart';

class DomainOffPeakWindowOptionsOffPeakWindow {
  /// 10h window for updates
  final DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime? windowStartTime;

  /// Creates a new [DomainOffPeakWindowOptionsOffPeakWindow].
  /// [windowStartTime] 10h window for updates
  DomainOffPeakWindowOptionsOffPeakWindow({
    this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final windowStartTimeValue = windowStartTime;
    if (windowStartTimeValue != null) {
      map['windowStartTime'] = windowStartTimeValue.toMap();
    }
    return map;
  }

  factory DomainOffPeakWindowOptionsOffPeakWindow.fromMap(
      Map<String, dynamic> map) {
    return DomainOffPeakWindowOptionsOffPeakWindow(
      windowStartTime: map['windowStartTime'] == null
          ? null
          : DomainOffPeakWindowOptionsOffPeakWindowWindowStartTime.fromMap(
              (map['windowStartTime'] as Map).cast<String, dynamic>()),
    );
  }
}
