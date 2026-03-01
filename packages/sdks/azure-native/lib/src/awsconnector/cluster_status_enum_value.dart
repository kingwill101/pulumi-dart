// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ClusterStatusEnumValue
class ClusterStatusEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ClusterStatusEnumValue].
  /// [value] Property value
  ClusterStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ClusterStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return ClusterStatusEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

