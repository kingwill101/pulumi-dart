// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Resource resources.
class ResourceState {
  /// The meta store's description.
  final pulumi.Input<String>? description;
  /// The ext info of meta store.
  final pulumi.Input<String>? extInfo;
  /// The meta store's name, can be used as table name.
  final pulumi.Input<String>? name;
  /// The meta store's schema info, which is json string format, used to define table's fields.
  final pulumi.Input<String>? schema;
  /// The meta store's type, userdefine e.g.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceState].
  /// [description] The meta store's description.
  /// [extInfo] The ext info of meta store.
  /// [name] The meta store's name, can be used as table name.
  /// [schema] The meta store's schema info, which is json string format, used to define table's fields.
  /// [type] The meta store's type, userdefine e.g.
  ResourceState({
    this.description,
    this.extInfo,
    this.name,
    this.schema,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'extInfo': ?extInfo,
      'name': ?name,
      'schema': ?schema,
      'type': ?type,
    };
  }

  factory ResourceState.fromMap(Map<String, dynamic> map) {
    return ResourceState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      extInfo: map['extInfo'] == null ? null : (map['extInfo']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      schema: map['schema'] == null ? null : (map['schema']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

