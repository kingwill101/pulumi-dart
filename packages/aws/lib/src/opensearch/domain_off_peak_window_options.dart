// ignore_for_file: unused_element, unnecessary_cast

import 'domain_off_peak_window_options_off_peak_window.dart';

class DomainOffPeakWindowOptions {
  /// Enabled disabled toggle for off-peak update window.
  final bool? enabled;
  final DomainOffPeakWindowOptionsOffPeakWindow? offPeakWindow;

  /// Creates a new [DomainOffPeakWindowOptions].
  /// [enabled] Enabled disabled toggle for off-peak update window.
  /// [offPeakWindow] Optional.
  DomainOffPeakWindowOptions({this.enabled, this.offPeakWindow});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'offPeakWindow': ?offPeakWindow == null ? null : offPeakWindow!.toMap(),
    };
  }

  factory DomainOffPeakWindowOptions.fromMap(Map<String, dynamic> map) {
    return DomainOffPeakWindowOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      offPeakWindow: map['offPeakWindow'] == null
          ? null
          : DomainOffPeakWindowOptionsOffPeakWindow.fromMap(
              (map['offPeakWindow'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
