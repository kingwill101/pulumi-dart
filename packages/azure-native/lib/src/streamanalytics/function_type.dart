// ignore_for_file: unused_element, unnecessary_cast

import 'aggregate_function_properties.dart';

/// A function object, containing all information associated with the named function. All functions are contained under a streaming job.
class FunctionType {
  /// Resource name
  final String? name;
  /// The properties that are associated with a function.
  final AggregateFunctionProperties? properties;

  /// Creates a new [FunctionType].
  /// [name] Resource name
  /// [properties] The properties that are associated with a function.
  FunctionType({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory FunctionType.fromMap(Map<String, dynamic> map) {
    return FunctionType(
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : AggregateFunctionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

