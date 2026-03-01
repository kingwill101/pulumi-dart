// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SingleHeaderModelProperties
class SingleHeaderModelPropertiesResponse {
  /// The name of the query header to inspect.
  final String? name;

  /// Creates a new [SingleHeaderModelPropertiesResponse].
  /// [name] The name of the query header to inspect.
  SingleHeaderModelPropertiesResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SingleHeaderModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SingleHeaderModelPropertiesResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

