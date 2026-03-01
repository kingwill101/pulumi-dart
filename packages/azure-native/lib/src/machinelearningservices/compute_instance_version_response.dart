// ignore_for_file: unused_element, unnecessary_cast


/// Version of computeInstance.
class ComputeInstanceVersionResponse {
  /// Runtime of compute instance.
  final String? runtime;

  /// Creates a new [ComputeInstanceVersionResponse].
  /// [runtime] Runtime of compute instance.
  ComputeInstanceVersionResponse({
    this.runtime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtime': ?runtime,
    };
  }

  factory ComputeInstanceVersionResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceVersionResponse(
      runtime: map['runtime'] == null ? null : map['runtime'] as String,
    );
  }
}

