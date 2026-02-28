// ignore_for_file: unused_element, unnecessary_cast

class InstanceAccelerator {
  /// The type of an accelator for a CDF instance.
  /// Possible values are: `CDC`, `HEALTHCARE`, `CCAI_INSIGHTS`.
  final String acceleratorType;

  /// The type of an accelator for a CDF instance.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final String state;

  /// Creates a new [InstanceAccelerator].
  /// [acceleratorType] The type of an accelator for a CDF instance.
  /// [state] The type of an accelator for a CDF instance.
  InstanceAccelerator({
    required this.acceleratorType,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorType'] = acceleratorType;
    map['state'] = state;
    return map;
  }

  factory InstanceAccelerator.fromMap(Map<String, dynamic> map) {
    return InstanceAccelerator(
      acceleratorType: map['acceleratorType'] as String,
      state: map['state'] as String,
    );
  }
}
