// ignore_for_file: unused_element, unnecessary_cast

/// Identifies Data Fusion accelerators for an instance.
class AcceleratorResponseDatafusionV1beta1 {
  /// The type of an accelator for a CDF instance.
  final String acceleratorType;

  /// The state of the accelerator.
  final String state;

  AcceleratorResponseDatafusionV1beta1({
    required this.acceleratorType,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorType'] = acceleratorType;
    map['state'] = state;
    return map;
  }

  factory AcceleratorResponseDatafusionV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AcceleratorResponseDatafusionV1beta1(
      acceleratorType: map['acceleratorType'] as String,
      state: map['state'] as String,
    );
  }
}
