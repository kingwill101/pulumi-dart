// ignore_for_file: unused_element, unnecessary_cast


/// Counter describes a quantity associated with a device.
class CounterPatchResourceK8sIoV1beta1 {
  /// Value defines how much of a certain device counter is available.
  final String? value;

  /// Creates a new [CounterPatchResourceK8sIoV1beta1].
  /// [value] Value defines how much of a certain device counter is available.
  CounterPatchResourceK8sIoV1beta1({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CounterPatchResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CounterPatchResourceK8sIoV1beta1(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

