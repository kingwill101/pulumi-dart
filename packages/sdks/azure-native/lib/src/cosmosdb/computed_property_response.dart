// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a computed property
class ComputedPropertyResponse {
  /// The name of a computed property, for example - "cp_lowerName"
  final pulumi.Input<String>? name;
  /// The query that evaluates the value for computed property, for example - "SELECT VALUE LOWER(c.name) FROM c"
  final pulumi.Input<String>? query;

  /// Creates a new [ComputedPropertyResponse].
  /// [name] The name of a computed property, for example - "cp_lowerName"
  /// [query] The query that evaluates the value for computed property, for example - "SELECT VALUE LOWER(c.name) FROM c"
  ComputedPropertyResponse({
    this.name,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'query': ?query,
    };
  }

  factory ComputedPropertyResponse.fromMap(Map<String, dynamic> map) {
    return ComputedPropertyResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

