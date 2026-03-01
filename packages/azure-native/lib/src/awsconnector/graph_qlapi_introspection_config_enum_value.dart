// ignore_for_file: unused_element, unnecessary_cast


/// Definition of GraphQLApiIntrospectionConfigEnumValue
class GraphQLApiIntrospectionConfigEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [GraphQLApiIntrospectionConfigEnumValue].
  /// [value] Property value
  GraphQLApiIntrospectionConfigEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GraphQLApiIntrospectionConfigEnumValue.fromMap(Map<String, dynamic> map) {
    return GraphQLApiIntrospectionConfigEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

