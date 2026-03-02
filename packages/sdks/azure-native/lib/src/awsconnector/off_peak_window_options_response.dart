// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'off_peak_window_response.dart';

/// Definition of OffPeakWindowOptions
class OffPeakWindowOptionsResponse {
  /// <p>Whether to enable an off-peak window.</p> <p>This option is only available when modifying a domain created prior to February 16, 2023, not when creating a new domain. All domains created after this date have the off-peak window enabled by default. You can't disable the off-peak window after it's enabled for a domain.</p>
  final pulumi.Input<bool>? enabled;
  /// <p>Off-peak window settings for the domain.</p>
  final pulumi.Input<OffPeakWindowResponse>? offPeakWindow;

  /// Creates a new [OffPeakWindowOptionsResponse].
  /// [enabled] <p>Whether to enable an off-peak window.</p> <p>This option is only available when modifying a domain created prior to February 16, 2023, not when creating a new domain. All domains created after this date have the off-peak window enabled by default. You can't disable the off-peak window after it's enabled for a domain.</p>
  /// [offPeakWindow] <p>Off-peak window settings for the domain.</p>
  OffPeakWindowOptionsResponse({
    this.enabled,
    this.offPeakWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'offPeakWindow': ?pulumi.Input.mapOptionalInputValue<OffPeakWindowResponse, Map<String, dynamic>>(offPeakWindow, (value) => value.toMap()),
    };
  }

  factory OffPeakWindowOptionsResponse.fromMap(Map<String, dynamic> map) {
    return OffPeakWindowOptionsResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      offPeakWindow: map['offPeakWindow'] == null ? null : (OffPeakWindowResponse.fromMap((map['offPeakWindow']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

