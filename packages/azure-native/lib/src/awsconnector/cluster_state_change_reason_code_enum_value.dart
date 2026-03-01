// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ClusterStateChangeReasonCodeEnumValue
class ClusterStateChangeReasonCodeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ClusterStateChangeReasonCodeEnumValue].
  /// [value] Property value
  ClusterStateChangeReasonCodeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ClusterStateChangeReasonCodeEnumValue.fromMap(Map<String, dynamic> map) {
    return ClusterStateChangeReasonCodeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

