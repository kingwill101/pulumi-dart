// ignore_for_file: unused_element, unnecessary_cast


/// Counter describes a quantity associated with a device.
class CounterResourceK8sIoV1beta2 {
  /// Value defines how much of a certain device counter is available.
  final String value;

  /// Creates a new [CounterResourceK8sIoV1beta2].
  /// [value] Value defines how much of a certain device counter is available.
  CounterResourceK8sIoV1beta2({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory CounterResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return CounterResourceK8sIoV1beta2(
      value: map['value'] as String,
    );
  }
}

