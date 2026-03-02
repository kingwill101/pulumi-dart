// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AcceleratorTotalMemoryMiBRequest
class AcceleratorTotalMemoryMiBRequestResponse {
  /// The memory maximum in MiB.
  final pulumi.Input<int>? max;
  /// The memory minimum in MiB.
  final pulumi.Input<int>? min;

  /// Creates a new [AcceleratorTotalMemoryMiBRequestResponse].
  /// [max] The memory maximum in MiB.
  /// [min] The memory minimum in MiB.
  AcceleratorTotalMemoryMiBRequestResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory AcceleratorTotalMemoryMiBRequestResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorTotalMemoryMiBRequestResponse(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

