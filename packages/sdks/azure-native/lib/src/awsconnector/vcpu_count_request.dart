// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VCpuCountRequest
class VCpuCountRequest {
  /// The maximum number of vCPUs.
  final pulumi.Input<int>? max;
  /// The minimum number of vCPUs.
  final pulumi.Input<int>? min;

  /// Creates a new [VCpuCountRequest].
  /// [max] The maximum number of vCPUs.
  /// [min] The minimum number of vCPUs.
  VCpuCountRequest({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory VCpuCountRequest.fromMap(Map<String, dynamic> map) {
    return VCpuCountRequest(
      max: map['max'] == null ? null : (map['max']! as int).input(),
      min: map['min'] == null ? null : (map['min']! as int).input(),
    );
  }
}

