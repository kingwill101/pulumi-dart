// ignore_for_file: unused_element, unnecessary_cast


/// Definition of NetworkInterfaceStatusEnumValue
class NetworkInterfaceStatusEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [NetworkInterfaceStatusEnumValue].
  /// [value] Property value
  NetworkInterfaceStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory NetworkInterfaceStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceStatusEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

