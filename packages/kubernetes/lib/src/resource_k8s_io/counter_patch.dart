// ignore_for_file: unused_element, unnecessary_cast


/// Counter describes a quantity associated with a device.
class CounterPatch {
  /// Value defines how much of a certain device counter is available.
  final String? value;

  /// Creates a new [CounterPatch].
  /// [value] Value defines how much of a certain device counter is available.
  CounterPatch({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CounterPatch.fromMap(Map<String, dynamic> map) {
    return CounterPatch(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

