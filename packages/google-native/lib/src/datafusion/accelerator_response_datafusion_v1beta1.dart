// ignore_for_file: unused_element, unnecessary_cast


/// Identifies Data Fusion accelerators for an instance.
class AcceleratorResponseDatafusionV1beta1 {
  /// The type of an accelator for a CDF instance.
  final String acceleratorType;
  /// The state of the accelerator.
  final String state;

  /// Creates a new [AcceleratorResponseDatafusionV1beta1].
  /// [acceleratorType] The type of an accelator for a CDF instance.
  /// [state] The state of the accelerator.
  AcceleratorResponseDatafusionV1beta1({
    required this.acceleratorType,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': acceleratorType,
      'state': state,
    };
  }

  factory AcceleratorResponseDatafusionV1beta1.fromMap(Map<String, dynamic> map) {
    return AcceleratorResponseDatafusionV1beta1(
      acceleratorType: map['acceleratorType'] as String,
      state: map['state'] as String,
    );
  }
}

