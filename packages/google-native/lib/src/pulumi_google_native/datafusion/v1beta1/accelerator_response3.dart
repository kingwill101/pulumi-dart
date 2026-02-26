// ignore_for_file: unused_element, unnecessary_cast

/// Identifies Data Fusion accelerators for an instance.
class AcceleratorResponse3 {
  /// The type of an accelator for a CDF instance.
  final String acceleratorType;

  /// The state of the accelerator.
  final String state;

  AcceleratorResponse3({
    required this.acceleratorType,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorType'] = acceleratorType;
    map['state'] = state;
    return map;
  }

  factory AcceleratorResponse3.fromMap(Map<String, dynamic> map) {
    return AcceleratorResponse3(
      acceleratorType: map['acceleratorType'] as String,
      state: map['state'] as String,
    );
  }
}
