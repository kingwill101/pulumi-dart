// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MemoryGiBPerVCpuRequest
class MemoryGiBPerVCpuRequestResponse {
  /// The memory maximum in GiB.
  final int? max;
  /// The memory minimum in GiB.
  final int? min;

  /// Creates a new [MemoryGiBPerVCpuRequestResponse].
  /// [max] The memory maximum in GiB.
  /// [min] The memory minimum in GiB.
  MemoryGiBPerVCpuRequestResponse({
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
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

