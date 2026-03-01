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
    pulumi.Output<String>? description,
    pulumi.Output<String>? extInfo,
    pulumi.Output<String>? name,
    pulumi.Output<String>? schema,
    pulumi.Output<String>? type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      extInfo = pulumi.Input.asOptionalInput<String>(extInfo),
      name = pulumi.Input.asOptionalInput<String>(name),
      schema = pulumi.Input.asOptionalInput<String>(schema),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      extInfo: map['extInfo'] == null ? null : pulumi.Output.create<String>(map['extInfo'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      schema: map['schema'] == null ? null : pulumi.Output.create<String>(map['schema'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

