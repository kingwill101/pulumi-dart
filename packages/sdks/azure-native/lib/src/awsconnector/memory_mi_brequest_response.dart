// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MemoryMiBRequest
class MemoryMiBRequestResponse {
  /// The memory maximum in MiB.
  final pulumi.Input<int>? max;
  /// The memory minimum in MiB.
  final pulumi.Input<int>? min;

  /// Creates a new [MemoryMiBRequestResponse].
  /// [max] The memory maximum in MiB.
  /// [min] The memory minimum in MiB.
  MemoryMiBRequestResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory MemoryMiBRequestResponse.fromMap(Map<String, dynamic> map) {
    return MemoryMiBRequestResponse(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

