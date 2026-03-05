// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMAttributes using double values.
class VMAttributeMinMaxDoubleResponse {
  /// Maximum value. Double.MaxValue(1.7976931348623157E+308)
  final pulumi.Input<double>? max;
  /// Minimum value. default 0. Double.MinValue()
  final pulumi.Input<double>? min;

  /// Creates a new [VMAttributeMinMaxDoubleResponse].
  /// [max] Maximum value. Double.MaxValue(1.7976931348623157E+308)
  /// [min] Minimum value. default 0. Double.MinValue()
  VMAttributeMinMaxDoubleResponse({
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
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

