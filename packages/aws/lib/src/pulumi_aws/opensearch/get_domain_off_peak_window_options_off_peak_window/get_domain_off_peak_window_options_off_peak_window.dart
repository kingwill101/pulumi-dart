// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_domain_off_peak_window_options_off_peak_window_window_start_time/get_domain_off_peak_window_options_off_peak_window_window_start_time.dart';

class GetDomainOffPeakWindowOptionsOffPeakWindow {
  /// 10h window for updates
  final List<GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime>
      windowStartTimes;

  GetDomainOffPeakWindowOptionsOffPeakWindow({
    required this.windowStartTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['windowStartTimes'] = Input.encodeList<
        GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime,
        Map<String, dynamic>>(windowStartTimes, (value) => value.toMap());
    return map;
  }

  factory GetDomainOffPeakWindowOptionsOffPeakWindow.fromMap(
      Map<String, dynamic> map) {
    return GetDomainOffPeakWindowOptionsOffPeakWindow(
      windowStartTimes: Input.decodeList<
              GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime>(
          map['windowStartTimes'],
          (value) =>
              GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
