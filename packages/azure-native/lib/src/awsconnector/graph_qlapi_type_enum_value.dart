// ignore_for_file: unused_element, unnecessary_cast


/// Definition of GraphQLApiTypeEnumValue
class GraphQLApiTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [GraphQLApiTypeEnumValue].
  /// [value] Property value
  GraphQLApiTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GraphQLApiTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return GraphQLApiTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

