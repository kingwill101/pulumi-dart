// ignore_for_file: unused_element, unnecessary_cast


class V3FunctionCustomContainerConfigAccelerationInfo {
  /// Image Acceleration Status (Deprecated)
  final String? status;

  /// Creates a new [V3FunctionCustomContainerConfigAccelerationInfo].
  /// [status] Image Acceleration Status (Deprecated)
  V3FunctionCustomContainerConfigAccelerationInfo({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory V3FunctionCustomContainerConfigAccelerationInfo.fromMap(Map<String, dynamic> map) {
    return V3FunctionCustomContainerConfigAccelerationInfo(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

