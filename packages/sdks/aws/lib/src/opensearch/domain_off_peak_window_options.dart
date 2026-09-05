// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_off_peak_window_options_off_peak_window.dart';

class DomainOffPeakWindowOptions {
  /// Enabled disabled toggle for off-peak update window.
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<DomainOffPeakWindowOptionsOffPeakWindow?>? offPeakWindow;

  /// Creates a new [DomainOffPeakWindowOptions].
  /// [enabled] Enabled disabled toggle for off-peak update window.
  /// [offPeakWindow] Optional.
  const DomainOffPeakWindowOptions({
    this.enabled,
    this.offPeakWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'offPeakWindow': ?pulumi.Input.mapOptionalInputValue<DomainOffPeakWindowOptionsOffPeakWindow, Map<String, dynamic>>(offPeakWindow, (value) => value.toMap()),
    };
  }

  factory DomainOffPeakWindowOptions.fromMap(Map<String, dynamic> map) {
    return DomainOffPeakWindowOptions(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      offPeakWindow: (() { final guardedValue = map['offPeakWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOffPeakWindowOptionsOffPeakWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
