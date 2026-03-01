// ignore_for_file: unused_element, unnecessary_cast


/// Counter describes a quantity associated with a device.
class Counter {
  /// Value defines how much of a certain device counter is available.
  final String value;

  /// Creates a new [Counter].
  /// [value] Value defines how much of a certain device counter is available.
  Counter({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory Counter.fromMap(Map<String, dynamic> map) {
    return Counter(
      value: map['value'] as String,
    );
  }
}

