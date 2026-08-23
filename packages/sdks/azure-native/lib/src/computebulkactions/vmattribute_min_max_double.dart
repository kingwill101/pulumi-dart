// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMAttributes using double values.
class VMAttributeMinMaxDouble {
  /// Maximum value. Must be greater than zero. Double.MaxValue(1.7976931348623157E+308).
  final pulumi.Input<double>? max;
  /// Minimum value. If not specified, no minimum filter is applied.
  final pulumi.Input<double>? min;

  /// Creates a new [VMAttributeMinMaxDouble].
  /// [max] Maximum value. Must be greater than zero. Double.MaxValue(1.7976931348623157E+308).
  /// [min] Minimum value. If not specified, no minimum filter is applied.
  const VMAttributeMinMaxDouble({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory VMAttributeMinMaxDouble.fromMap(Map<String, dynamic> map) {
    return VMAttributeMinMaxDouble(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
