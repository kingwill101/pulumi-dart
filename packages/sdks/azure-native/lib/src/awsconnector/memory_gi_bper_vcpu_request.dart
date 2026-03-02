// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MemoryGiBPerVCpuRequest
class MemoryGiBPerVCpuRequest {
  /// The memory maximum in GiB.
  final pulumi.Input<int>? max;
  /// The memory minimum in GiB.
  final pulumi.Input<int>? min;

  /// Creates a new [MemoryGiBPerVCpuRequest].
  /// [max] The memory maximum in GiB.
  /// [min] The memory minimum in GiB.
  MemoryGiBPerVCpuRequest({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory MemoryGiBPerVCpuRequest.fromMap(Map<String, dynamic> map) {
    return MemoryGiBPerVCpuRequest(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

