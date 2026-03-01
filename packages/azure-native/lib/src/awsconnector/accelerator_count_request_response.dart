// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AcceleratorCountRequest
class AcceleratorCountRequestResponse {
  /// The maximum value.
  final int? max;
  /// The minimum value.
  final int? min;

  /// Creates a new [AcceleratorCountRequestResponse].
  /// [max] The maximum value.
  /// [min] The minimum value.
  AcceleratorCountRequestResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory AcceleratorCountRequestResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorCountRequestResponse(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

