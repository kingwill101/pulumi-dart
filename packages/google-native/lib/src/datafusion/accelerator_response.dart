// ignore_for_file: unused_element, unnecessary_cast

/// Identifies Data Fusion accelerators for an instance.
class AcceleratorResponse {
  /// The type of an accelator for a CDF instance.
  final String acceleratorType;

  /// The state of the accelerator.
  final String state;

  /// Creates a new [AcceleratorResponse].
  /// [acceleratorType] The type of an accelator for a CDF instance.
  /// [state] The state of the accelerator.
  AcceleratorResponse({required this.acceleratorType, required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': acceleratorType,
      'state': state,
    };
  }

  factory AcceleratorResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorResponse(
      acceleratorType: map['acceleratorType'] as String,
      state: map['state'] as String,
    );
  }
}
