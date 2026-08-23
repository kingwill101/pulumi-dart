// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The failure http status code range
class FailureStatusCodeRangeResponse {
  /// The maximum http status code.
  final pulumi.Input<int>? max;
  /// The minimum http status code.
  final pulumi.Input<int>? min;

  /// Creates a new [FailureStatusCodeRangeResponse].
  /// [max] The maximum http status code.
  /// [min] The minimum http status code.
  const FailureStatusCodeRangeResponse({
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
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
