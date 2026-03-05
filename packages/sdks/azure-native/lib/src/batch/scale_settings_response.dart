// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scale_settings_response.dart';
import 'fixed_scale_settings_response.dart';

/// Defines the desired size of the pool. This can either be 'fixedScale' where the requested targetDedicatedNodes is specified, or 'autoScale' which defines a formula which is periodically reevaluated. If this property is not specified, the pool will have a fixed scale with 0 targetDedicatedNodes.
class ScaleSettingsResponse {
  /// This property and fixedScale are mutually exclusive and one of the properties must be specified.
  final pulumi.Input<AutoScaleSettingsResponse>? autoScale;
  /// This property and autoScale are mutually exclusive and one of the properties must be specified.
  final pulumi.Input<FixedScaleSettingsResponse>? fixedScale;

  /// Creates a new [ScaleSettingsResponse].
  /// [autoScale] This property and fixedScale are mutually exclusive and one of the properties must be specified.
  /// [fixedScale] This property and autoScale are mutually exclusive and one of the properties must be specified.
  ScaleSettingsResponse({
    this.autoScale,
    this.fixedScale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScale': ?pulumi.Input.mapOptionalInputValue<AutoScaleSettingsResponse, Map<String, dynamic>>(autoScale, (value) => value.toMap()),
      'fixedScale': ?pulumi.Input.mapOptionalInputValue<FixedScaleSettingsResponse, Map<String, dynamic>>(fixedScale, (value) => value.toMap()),
    };
  }

  factory ScaleSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ScaleSettingsResponse(
      autoScale: (() { final guardedValue = map['autoScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoScaleSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fixedScale: (() { final guardedValue = map['fixedScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FixedScaleSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

