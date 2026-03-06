// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_off_peak_window_options_off_peak_window.dart';

class GetDomainOffPeakWindowOptions {
  /// Enabled disabled toggle for off-peak update window
  final pulumi.Input<bool> enabled;
  final pulumi.Input<List<GetDomainOffPeakWindowOptionsOffPeakWindow>> offPeakWindows;

  /// Creates a new [GetDomainOffPeakWindowOptions].
  /// [enabled] Enabled disabled toggle for off-peak update window
  /// [offPeakWindows] Required.
  const GetDomainOffPeakWindowOptions({
    required this.enabled,
    required this.offPeakWindows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'offPeakWindows': pulumi.Input.mapInputValue<List<GetDomainOffPeakWindowOptionsOffPeakWindow>, List<Map<String, dynamic>>>(offPeakWindows, (value) => pulumi.Input.encodeList<GetDomainOffPeakWindowOptionsOffPeakWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDomainOffPeakWindowOptions.fromMap(Map<String, dynamic> map) {
    return GetDomainOffPeakWindowOptions(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      offPeakWindows: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDomainOffPeakWindowOptionsOffPeakWindow>(map['offPeakWindows']!, (value) => GetDomainOffPeakWindowOptionsOffPeakWindow.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

