// ignore_for_file: unused_element, unnecessary_cast


/// The definition of a computed property
class ComputedProperty {
  /// The name of a computed property, for example - "cp_lowerName"
  final String? name;
  /// The query that evaluates the value for computed property, for example - "SELECT VALUE LOWER(c.name) FROM c"
  final String? query;

  /// Creates a new [ComputedProperty].
  /// [name] The name of a computed property, for example - "cp_lowerName"
  /// [query] The query that evaluates the value for computed property, for example - "SELECT VALUE LOWER(c.name) FROM c"
  ComputedProperty({
    this.name,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'query': ?query,
    };
  }

  factory ComputedProperty.fromMap(Map<String, dynamic> map) {
    return ComputedProperty(
      name: map['name'] == null ? null : map['name'] as String,
      query: map['query'] == null ? null : map['query'] as String,
    );
  }
}

