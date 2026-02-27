// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_response_servicemanagement_v1.dart';
import 'option_response.dart';
import 'source_context_response_servicemanagement_v1.dart';

/// A protocol buffer message type.
class TypeResponseServicemanagementV1 {
  /// The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  final String edition;

  /// The list of fields.
  final List<FieldResponseServicemanagementV1> fields;

  /// The fully qualified message name.
  final String name;

  /// The list of types appearing in `oneof` definitions in this type.
  final List<String> oneofs;

  /// The protocol buffer options.
  final List<OptionResponse> options;

  /// The source context.
  final SourceContextResponseServicemanagementV1 sourceContext;

  /// The source syntax.
  final String syntax;

  TypeResponseServicemanagementV1({
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
    map['fields'] = pulumi.Input.encodeList<FieldResponseServicemanagementV1,
        Map<String, dynamic>>(fields, (value) => value.toMap());
    map['name'] = name;
    map['oneofs'] = oneofs;
    map['options'] =
        pulumi.Input.encodeList<OptionResponse, Map<String, dynamic>>(
            options, (value) => value.toMap());
    map['sourceContext'] = sourceContext.toMap();
    map['syntax'] = syntax;
    return map;
  }

  factory TypeResponseServicemanagementV1.fromMap(Map<String, dynamic> map) {
    return TypeResponseServicemanagementV1(
      edition: map['edition'] as String,
      fields: pulumi.Input.decodeList<FieldResponseServicemanagementV1>(
          map['fields'],
          (value) => FieldResponseServicemanagementV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      oneofs: (map['oneofs'] as List).cast<String>(),
      options: pulumi.Input.decodeList<OptionResponse>(
          map['options'],
          (value) =>
              OptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceContext: SourceContextResponseServicemanagementV1.fromMap(
          (map['sourceContext'] as Map).cast<String, dynamic>()),
      syntax: map['syntax'] as String,
    );
  }
}
