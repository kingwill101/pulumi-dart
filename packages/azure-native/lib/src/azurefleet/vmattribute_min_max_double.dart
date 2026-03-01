// ignore_for_file: unused_element, unnecessary_cast


/// VMAttributes using double values.
class VMAttributeMinMaxDouble {
  /// Maximum value. Double.MaxValue(1.7976931348623157E+308)
  final double? max;
  /// Minimum value. default 0. Double.MinValue()
  final double? min;

  /// Creates a new [VMAttributeMinMaxDouble].
  /// [max] Maximum value. Double.MaxValue(1.7976931348623157E+308)
  /// [min] Minimum value. default 0. Double.MinValue()
  VMAttributeMinMaxDouble({
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
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}

