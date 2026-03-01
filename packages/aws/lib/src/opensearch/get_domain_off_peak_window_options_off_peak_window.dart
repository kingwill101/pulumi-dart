// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_off_peak_window_options_off_peak_window_window_start_time.dart';

class GetDomainOffPeakWindowOptionsOffPeakWindow {
  /// 10h window for updates
  final List<GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime> windowStartTimes;

  /// Creates a new [GetDomainOffPeakWindowOptionsOffPeakWindow].
  /// [windowStartTimes] 10h window for updates
  GetDomainOffPeakWindowOptionsOffPeakWindow({
    required this.windowStartTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowStartTimes': pulumi.Input.encodeList<GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime, Map<String, dynamic>>(windowStartTimes, (value) => value.toMap()),
    };
  }

  factory GetDomainOffPeakWindowOptionsOffPeakWindow.fromMap(Map<String, dynamic> map) {
    return GetDomainOffPeakWindowOptionsOffPeakWindow(
      windowStartTimes: pulumi.Input.decodeList<GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime>(map['windowStartTimes'], (value) => GetDomainOffPeakWindowOptionsOffPeakWindowWindowStartTime.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

