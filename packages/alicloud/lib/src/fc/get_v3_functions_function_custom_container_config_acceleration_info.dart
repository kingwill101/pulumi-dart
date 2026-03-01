// ignore_for_file: unused_element, unnecessary_cast


class GetV3FunctionsFunctionCustomContainerConfigAccelerationInfo {
  /// Image Acceleration Status (Deprecated).
  final String status;

  /// Creates a new [GetV3FunctionsFunctionCustomContainerConfigAccelerationInfo].
  /// [status] Image Acceleration Status (Deprecated).
  GetV3FunctionsFunctionCustomContainerConfigAccelerationInfo({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory GetV3FunctionsFunctionCustomContainerConfigAccelerationInfo.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionCustomContainerConfigAccelerationInfo(
      status: map['status'] as String,
    );
  }
}

