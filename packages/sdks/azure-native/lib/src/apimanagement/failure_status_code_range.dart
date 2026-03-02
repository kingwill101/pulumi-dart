// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The failure http status code range
class FailureStatusCodeRange {
  /// The maximum http status code.
  final pulumi.Input<int>? max;
  /// The minimum http status code.
  final pulumi.Input<int>? min;

  /// Creates a new [FailureStatusCodeRange].
  /// [max] The maximum http status code.
  /// [min] The minimum http status code.
  FailureStatusCodeRange({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory FailureStatusCodeRange.fromMap(Map<String, dynamic> map) {
    return FailureStatusCodeRange(
      max: map['max'] == null ? null : (map['max']! as int).input(),
      min: map['min'] == null ? null : (map['min']! as int).input(),
    );
  }
}

