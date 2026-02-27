// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'field_response3.dart';
import 'option_response.dart';
import 'source_context_response3.dart';

/// A protocol buffer message type.
class TypeResponse3 {
  /// The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  final String edition;

  /// The list of fields.
  final List<FieldResponse3> fields;

  /// The fully qualified message name.
  final String name;

  /// The list of types appearing in `oneof` definitions in this type.
  final List<String> oneofs;

  /// The protocol buffer options.
  final List<OptionResponse> options;

  /// The source context.
  final SourceContextResponse3 sourceContext;

  /// The source syntax.
  final String syntax;

  TypeResponse3({
    required this.edition,
    required this.fields,
    required this.name,
    required this.oneofs,
    required this.options,
    required this.sourceContext,
    required this.syntax,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['edition'] = edition;
    map['fields'] = Input.encodeList<FieldResponse3, Map<String, dynamic>>(
        fields, (value) => value.toMap());
    map['name'] = name;
    map['oneofs'] = oneofs;
    map['options'] = Input.encodeList<OptionResponse, Map<String, dynamic>>(
        options, (value) => value.toMap());
    map['sourceContext'] = sourceContext.toMap();
    map['syntax'] = syntax;
    return map;
  }

  factory TypeResponse3.fromMap(Map<String, dynamic> map) {
    return TypeResponse3(
      edition: map['edition'] as String,
      fields: Input.decodeList<FieldResponse3>(
          map['fields'],
          (value) =>
              FieldResponse3.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      oneofs: (map['oneofs'] as List).cast<String>(),
      options: Input.decodeList<OptionResponse>(
          map['options'],
          (value) =>
              OptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceContext: SourceContextResponse3.fromMap(
          (map['sourceContext'] as Map).cast<String, dynamic>()),
      syntax: map['syntax'] as String,
    );
  }
}
