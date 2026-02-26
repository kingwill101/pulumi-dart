// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_domain_off_peak_window_options_off_peak_window/get_domain_off_peak_window_options_off_peak_window.dart';

class GetDomainOffPeakWindowOptions {
  /// Enabled disabled toggle for off-peak update window
  final bool enabled;
  final List<GetDomainOffPeakWindowOptionsOffPeakWindow> offPeakWindows;

  GetDomainOffPeakWindowOptions({
    required this.enabled,
    required this.offPeakWindows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['offPeakWindows'] = Input.encodeList<
        GetDomainOffPeakWindowOptionsOffPeakWindow,
        Map<String, dynamic>>(offPeakWindows, (value) => value.toMap());
    return map;
  }

  factory GetDomainOffPeakWindowOptions.fromMap(Map<String, dynamic> map) {
    return GetDomainOffPeakWindowOptions(
      enabled: map['enabled'] as bool,
      offPeakWindows:
          Input.decodeList<GetDomainOffPeakWindowOptionsOffPeakWindow>(
              map['offPeakWindows'],
              (value) => GetDomainOffPeakWindowOptionsOffPeakWindow.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
