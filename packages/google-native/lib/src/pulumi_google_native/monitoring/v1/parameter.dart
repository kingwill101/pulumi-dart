// ignore_for_file: unused_element, unnecessary_cast

/// Preview: Parameter value applied to the aggregation function. This is a preview feature and may be subject to change before final release.
class Parameter {
  /// A floating-point parameter value.
  final double? doubleValue;

  /// An integer parameter value.
  final String? intValue;

  Parameter({
    this.doubleValue,
    this.intValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final doubleValueValue = doubleValue;
    if (doubleValueValue != null) {
      map['doubleValue'] = doubleValueValue;
    }
    final intValueValue = intValue;
    if (intValueValue != null) {
      map['intValue'] = intValueValue;
    }
    return map;
  }

  factory Parameter.fromMap(Map<String, dynamic> map) {
    return Parameter(
      doubleValue:
          map['doubleValue'] == null ? null : map['doubleValue'] as double,
      intValue: map['intValue'] == null ? null : map['intValue'] as String,
    );
  }
}
