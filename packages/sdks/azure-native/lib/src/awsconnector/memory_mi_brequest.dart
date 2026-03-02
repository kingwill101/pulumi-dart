// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MemoryMiBRequest
class MemoryMiBRequest {
  /// The memory maximum in MiB.
  final pulumi.Input<int>? max;
  /// The memory minimum in MiB.
  final pulumi.Input<int>? min;

  /// Creates a new [MemoryMiBRequest].
  /// [max] The memory maximum in MiB.
  /// [min] The memory minimum in MiB.
  MemoryMiBRequest({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory MemoryMiBRequest.fromMap(Map<String, dynamic> map) {
    return MemoryMiBRequest(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

