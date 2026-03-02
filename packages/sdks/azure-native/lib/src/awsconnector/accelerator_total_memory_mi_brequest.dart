// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AcceleratorTotalMemoryMiBRequest
class AcceleratorTotalMemoryMiBRequest {
  /// The memory maximum in MiB.
  final pulumi.Input<int>? max;
  /// The memory minimum in MiB.
  final pulumi.Input<int>? min;

  /// Creates a new [AcceleratorTotalMemoryMiBRequest].
  /// [max] The memory maximum in MiB.
  /// [min] The memory minimum in MiB.
  AcceleratorTotalMemoryMiBRequest({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory AcceleratorTotalMemoryMiBRequest.fromMap(Map<String, dynamic> map) {
    return AcceleratorTotalMemoryMiBRequest(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

