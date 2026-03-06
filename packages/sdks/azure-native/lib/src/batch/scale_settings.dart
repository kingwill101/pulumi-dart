// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scale_settings.dart';
import 'fixed_scale_settings.dart';

/// Defines the desired size of the pool. This can either be 'fixedScale' where the requested targetDedicatedNodes is specified, or 'autoScale' which defines a formula which is periodically reevaluated. If this property is not specified, the pool will have a fixed scale with 0 targetDedicatedNodes.
class ScaleSettings {
  /// This property and fixedScale are mutually exclusive and one of the properties must be specified.
  final pulumi.Input<AutoScaleSettings>? autoScale;
  /// This property and autoScale are mutually exclusive and one of the properties must be specified.
  final pulumi.Input<FixedScaleSettings>? fixedScale;

  /// Creates a new [ScaleSettings].
  /// [autoScale] This property and fixedScale are mutually exclusive and one of the properties must be specified.
  /// [fixedScale] This property and autoScale are mutually exclusive and one of the properties must be specified.
  const ScaleSettings({
    this.autoScale,
    this.fixedScale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScale': ?pulumi.Input.mapOptionalInputValue<AutoScaleSettings, Map<String, dynamic>>(autoScale, (value) => value.toMap()),
      'fixedScale': ?pulumi.Input.mapOptionalInputValue<FixedScaleSettings, Map<String, dynamic>>(fixedScale, (value) => value.toMap()),
    };
  }

  factory ScaleSettings.fromMap(Map<String, dynamic> map) {
    return ScaleSettings(
      autoScale: (() { final guardedValue = map['autoScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoScaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fixedScale: (() { final guardedValue = map['fixedScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FixedScaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

