// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_resource_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_log_resource_resource_args_doc}
class ResourceArgs {
  /// The meta store's description.
  final pulumi.Input<String>? description;
  /// The ext info of meta store.
  final pulumi.Input<String>? extInfo;
  /// The meta store's name, can be used as table name.
  final pulumi.Input<String>? name;
  /// The meta store's schema info, which is json string format, used to define table's fields.
  final pulumi.Input<String> schema;
  /// The meta store's type, userdefine e.g.
  final pulumi.Input<String> type;

  /// Creates a new [ResourceArgs].
  /// [description] The meta store's description.
  /// [extInfo] The ext info of meta store.
  /// [name] The meta store's name, can be used as table name.
  /// [schema] The meta store's schema info, which is json string format, used to define table's fields.
  /// [type] The meta store's type, userdefine e.g.
  ResourceArgs({
    this.description,
    this.extInfo,
    this.name,
    required this.schema,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'extInfo': ?extInfo,
      'name': ?name,
      'schema': schema,
      'type': type,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      extInfo: map['extInfo'] == null ? null : (map['extInfo'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      schema: (map['schema'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

