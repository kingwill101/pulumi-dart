// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TotalLocalStorageGBRequest
class TotalLocalStorageGBRequest {
  /// The storage maximum in GB.
  final pulumi.Input<int?>? max;
  /// The storage minimum in GB.
  final pulumi.Input<int?>? min;

  /// Creates a new [TotalLocalStorageGBRequest].
  /// [max] The storage maximum in GB.
  /// [min] The storage minimum in GB.
  const TotalLocalStorageGBRequest({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory TotalLocalStorageGBRequest.fromMap(Map<String, dynamic> map) {
    return TotalLocalStorageGBRequest(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
