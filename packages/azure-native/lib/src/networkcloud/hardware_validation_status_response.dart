// ignore_for_file: unused_element, unnecessary_cast


class HardwareValidationStatusResponse {
  /// The timestamp of the hardware validation execution.
  final String lastValidationTime;
  /// The outcome of the hardware validation.
  final String result;

  /// Creates a new [HardwareValidationStatusResponse].
  /// [lastValidationTime] The timestamp of the hardware validation execution.
  /// [result] The outcome of the hardware validation.
  HardwareValidationStatusResponse({
    required this.lastValidationTime,
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastValidationTime': lastValidationTime,
      'result': result,
    };
  }

  factory HardwareValidationStatusResponse.fromMap(Map<String, dynamic> map) {
    return HardwareValidationStatusResponse(
      lastValidationTime: map['lastValidationTime'] as String,
      result: map['result'] as String,
    );
  }
}

