// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MemoryGiBPerVCpuRequest
class MemoryGiBPerVCpuRequestResponse {
  /// The memory maximum in GiB.
  final pulumi.Input<int?>? max;
  /// The memory minimum in GiB.
  final pulumi.Input<int?>? min;

  /// Creates a new [MemoryGiBPerVCpuRequestResponse].
  /// [max] The memory maximum in GiB.
  /// [min] The memory minimum in GiB.
  const MemoryGiBPerVCpuRequestResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory MemoryGiBPerVCpuRequestResponse.fromMap(Map<String, dynamic> map) {
    return MemoryGiBPerVCpuRequestResponse(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
