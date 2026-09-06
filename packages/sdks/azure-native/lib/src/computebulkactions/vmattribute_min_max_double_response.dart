// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMAttributes using double values.
class VMAttributeMinMaxDoubleResponse {
  /// Maximum value. Must be greater than zero. Double.MaxValue(1.7976931348623157E+308).
  final pulumi.Input<double?>? max;
  /// Minimum value. If not specified, no minimum filter is applied.
  final pulumi.Input<double?>? min;

  /// Creates a new [VMAttributeMinMaxDoubleResponse].
  /// [max] Maximum value. Must be greater than zero. Double.MaxValue(1.7976931348623157E+308).
  /// [min] Minimum value. If not specified, no minimum filter is applied.
  const VMAttributeMinMaxDoubleResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory VMAttributeMinMaxDoubleResponse.fromMap(Map<String, dynamic> map) {
    return VMAttributeMinMaxDoubleResponse(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
