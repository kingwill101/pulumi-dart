// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SingleHeaderModelProperties
class SingleHeaderModelProperties {
  /// The name of the query header to inspect.
  final pulumi.Input<String>? name;

  /// Creates a new [SingleHeaderModelProperties].
  /// [name] The name of the query header to inspect.
  const SingleHeaderModelProperties({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SingleHeaderModelProperties.fromMap(Map<String, dynamic> map) {
    return SingleHeaderModelProperties(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

