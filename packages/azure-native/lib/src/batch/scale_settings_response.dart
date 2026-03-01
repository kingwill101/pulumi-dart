// ignore_for_file: unused_element, unnecessary_cast

import 'auto_scale_settings_response.dart';
import 'fixed_scale_settings_response.dart';

/// Defines the desired size of the pool. This can either be 'fixedScale' where the requested targetDedicatedNodes is specified, or 'autoScale' which defines a formula which is periodically reevaluated. If this property is not specified, the pool will have a fixed scale with 0 targetDedicatedNodes.
class ScaleSettingsResponse {
  /// This property and fixedScale are mutually exclusive and one of the properties must be specified.
  final AutoScaleSettingsResponse? autoScale;
  /// This property and autoScale are mutually exclusive and one of the properties must be specified.
  final FixedScaleSettingsResponse? fixedScale;

  /// Creates a new [ScaleSettingsResponse].
  /// [autoScale] This property and fixedScale are mutually exclusive and one of the properties must be specified.
  /// [fixedScale] This property and autoScale are mutually exclusive and one of the properties must be specified.
  ScaleSettingsResponse({
    this.autoScale,
    this.fixedScale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScale': ?autoScale == null ? null : autoScale!.toMap(),
      'fixedScale': ?fixedScale == null ? null : fixedScale!.toMap(),
    };
  }

  factory ScaleSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ScaleSettingsResponse(
      autoScale: map['autoScale'] == null ? null : AutoScaleSettingsResponse.fromMap((map['autoScale'] as Map).cast<String, dynamic>()),
      fixedScale: map['fixedScale'] == null ? null : FixedScaleSettingsResponse.fromMap((map['fixedScale'] as Map).cast<String, dynamic>()),
    );
  }
}

