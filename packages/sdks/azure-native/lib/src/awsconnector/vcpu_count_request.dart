// ignore_for_file: unused_element, unnecessary_cast


/// Definition of VCpuCountRequest
class VCpuCountRequest {
  /// The maximum number of vCPUs.
  final int? max;
  /// The minimum number of vCPUs.
  final int? min;

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
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

