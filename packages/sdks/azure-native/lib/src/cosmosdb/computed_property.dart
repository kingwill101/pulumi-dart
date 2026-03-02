// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a computed property
class ComputedProperty {
  /// The name of a computed property, for example - "cp_lowerName"
  final pulumi.Input<String>? name;
  /// The query that evaluates the value for computed property, for example - "SELECT VALUE LOWER(c.name) FROM c"
  final pulumi.Input<String>? query;

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
      name: map['name'] == null ? null : (map['name'] as String).input(),
      query: map['query'] == null ? null : (map['query'] as String).input(),
    );
  }
}

