// ignore_for_file: unused_element, unnecessary_cast


/// Definition of GraphQLApiTypeEnumValue
class GraphQLApiTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [GraphQLApiTypeEnumValueResponse].
  /// [value] Property value
  GraphQLApiTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GraphQLApiTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return GraphQLApiTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

