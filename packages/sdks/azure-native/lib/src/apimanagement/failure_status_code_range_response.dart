// ignore_for_file: unused_element, unnecessary_cast


/// The failure http status code range
class FailureStatusCodeRangeResponse {
  /// The maximum http status code.
  final int? max;
  /// The minimum http status code.
  final int? min;

  /// Creates a new [FailureStatusCodeRangeResponse].
  /// [max] The maximum http status code.
  /// [min] The minimum http status code.
  FailureStatusCodeRangeResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory FailureStatusCodeRangeResponse.fromMap(Map<String, dynamic> map) {
    return FailureStatusCodeRangeResponse(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

