// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_response.dart';
import 'option_response.dart';
import 'source_context_response.dart';

/// A protocol buffer message type.
class TypeResponse {
  /// The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  final String edition;
  /// The list of fields.
  final List<FieldResponse> fields;
  /// The fully qualified message name.
  final String name;
  /// The list of types appearing in `oneof` definitions in this type.
  final List<String> oneofs;
  /// The protocol buffer options.
  final List<OptionResponse> options;
  /// The source context.
  final SourceContextResponse sourceContext;
  /// The source syntax.
  final String syntax;

  /// Creates a new [TypeResponse].
  /// [edition] The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  /// [fields] The list of fields.
  /// [name] The fully qualified message name.
  /// [oneofs] The list of types appearing in `oneof` definitions in this type.
  /// [options] The protocol buffer options.
  /// [sourceContext] The source context.
  /// [syntax] The source syntax.
  TypeResponse({
    required this.edition,
    required this.fields,
    required this.name,
    required this.oneofs,
    required this.options,
    required this.sourceContext,
    required this.syntax,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edition': edition,
      'fields': pulumi.Input.encodeList<FieldResponse, Map<String, dynamic>>(fields, (value) => value.toMap()),
      'name': name,
      'oneofs': oneofs,
      'options': pulumi.Input.encodeList<OptionResponse, Map<String, dynamic>>(options, (value) => value.toMap()),
      'sourceContext': sourceContext.toMap(),
      'syntax': syntax,
    };
  }

  factory TypeResponse.fromMap(Map<String, dynamic> map) {
    return TypeResponse(
      edition: map['edition'] as String,
      fields: pulumi.Input.decodeList<FieldResponse>(map['fields'], (value) => FieldResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      oneofs: (map['oneofs'] as List).cast<String>(),
      options: pulumi.Input.decodeList<OptionResponse>(map['options'], (value) => OptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceContext: SourceContextResponse.fromMap((map['sourceContext'] as Map).cast<String, dynamic>()),
      syntax: map['syntax'] as String,
    );
  }
}

