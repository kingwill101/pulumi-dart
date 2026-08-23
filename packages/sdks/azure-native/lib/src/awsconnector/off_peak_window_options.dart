// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'off_peak_window.dart';

/// Definition of OffPeakWindowOptions
class OffPeakWindowOptions {
  /// &lt;p&gt;Whether to enable an off-peak window.&lt;/p&gt; &lt;p&gt;This option is only available when modifying a domain created prior to February 16, 2023, not when creating a new domain. All domains created after this date have the off-peak window enabled by default. You can't disable the off-peak window after it's enabled for a domain.&lt;/p&gt;
  final pulumi.Input<bool>? enabled;
  /// &lt;p&gt;Off-peak window settings for the domain.&lt;/p&gt;
  final pulumi.Input<OffPeakWindow>? offPeakWindow;

  /// Creates a new [OffPeakWindowOptions].
  /// [enabled] &lt;p&gt;Whether to enable an off-peak window.&lt;/p&gt; &lt;p&gt;This option is only available when modifying a domain created prior to February 16, 2023, not when creating a new domain. All domains created after this date have the off-peak window enabled by default. You can't disable the off-peak window after it's enabled for a domain.&lt;/p&gt;
  /// [offPeakWindow] &lt;p&gt;Off-peak window settings for the domain.&lt;/p&gt;
  const OffPeakWindowOptions({
    this.enabled,
    this.offPeakWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'offPeakWindow': ?pulumi.Input.mapOptionalInputValue<OffPeakWindow, Map<String, dynamic>>(offPeakWindow, (value) => value.toMap()),
    };
  }

  factory OffPeakWindowOptions.fromMap(Map<String, dynamic> map) {
    return OffPeakWindowOptions(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      offPeakWindow: (() { final guardedValue = map['offPeakWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OffPeakWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
