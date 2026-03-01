// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ClusterStatusEnumValue
class ClusterStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ClusterStatusEnumValueResponse].
  /// [value] Property value
  ClusterStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ClusterStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ClusterStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

