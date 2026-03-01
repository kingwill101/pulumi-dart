// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ClusterStateEnumValue
class ClusterStateEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ClusterStateEnumValueResponse].
  /// [value] Property value
  ClusterStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ClusterStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ClusterStateEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

