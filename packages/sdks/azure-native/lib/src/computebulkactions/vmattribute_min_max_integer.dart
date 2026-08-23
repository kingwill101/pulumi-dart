// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// While retrieving VMSizes from CRS, Min = 0 (uint.MinValue) if not specified, Max = 4294967295 (uint.MaxValue) if not specified. This allows to filter VMAttributes on all available VMSizes.
class VMAttributeMinMaxInteger {
  /// Max VMSize from CRS, Max = 4294967295 (uint.MaxValue) if not specified.
  final pulumi.Input<int>? max;
  /// Min VMSize from CRS, Min = 0 (uint.MinValue) if not specified.
  final pulumi.Input<int>? min;

  /// Creates a new [VMAttributeMinMaxInteger].
  /// [max] Max VMSize from CRS, Max = 4294967295 (uint.MaxValue) if not specified.
  /// [min] Min VMSize from CRS, Min = 0 (uint.MinValue) if not specified.
  const VMAttributeMinMaxInteger({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory VMAttributeMinMaxInteger.fromMap(Map<String, dynamic> map) {
    return VMAttributeMinMaxInteger(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
