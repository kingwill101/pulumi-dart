// ignore_for_file: unused_element, unnecessary_cast

import '../domain_off_peak_window_options_off_peak_window/domain_off_peak_window_options_off_peak_window.dart';

class DomainOffPeakWindowOptions {
  /// Enabled disabled toggle for off-peak update window.
  final bool? enabled;
  final DomainOffPeakWindowOptionsOffPeakWindow? offPeakWindow;

  DomainOffPeakWindowOptions({
    this.enabled,
    this.offPeakWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final offPeakWindowValue = offPeakWindow;
    if (offPeakWindowValue != null) {
      map['offPeakWindow'] = offPeakWindowValue.toMap();
    }
    return map;
  }

  factory DomainOffPeakWindowOptions.fromMap(Map<String, dynamic> map) {
    return DomainOffPeakWindowOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      offPeakWindow: map['offPeakWindow'] == null
          ? null
          : DomainOffPeakWindowOptionsOffPeakWindow.fromMap(
              (map['offPeakWindow'] as Map).cast<String, dynamic>()),
    );
  }
}
