// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_servicemanagement_v1.dart';
import 'option.dart';
import 'source_context_servicemanagement_v1.dart';
import 'type_syntax.dart';

/// A protocol buffer message type.
class TypeServicemanagementV1 {
  /// The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  final String? edition;

  /// The list of fields.
  final List<FieldServicemanagementV1>? fields;

  /// The fully qualified message name.
  final String? name;

  /// The list of types appearing in `oneof` definitions in this type.
  final List<String>? oneofs;

  /// The protocol buffer options.
  final List<Option>? options;

  /// The source context.
  final SourceContextServicemanagementV1? sourceContext;

  /// The source syntax.
  final TypeSyntax? syntax;

  TypeServicemanagementV1({
    this.edition,
    this.fields,
    this.name,
    this.oneofs,
    this.options,
    this.sourceContext,
    this.syntax,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final editionValue = edition;
    if (editionValue != null) {
      map['edition'] = editionValue;
    }
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = pulumi.Input.encodeList<FieldServicemanagementV1,
          Map<String, dynamic>>(fieldsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final oneofsValue = oneofs;
    if (oneofsValue != null) {
      map['oneofs'] = oneofsValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = pulumi.Input.encodeList<Option, Map<String, dynamic>>(
          optionsValue, (value) => value.toMap());
    }
    final sourceContextValue = sourceContext;
    if (sourceContextValue != null) {
      map['sourceContext'] = sourceContextValue.toMap();
    }
    final syntaxValue = syntax;
    if (syntaxValue != null) {
      map['syntax'] = syntaxValue.value;
    }
    return map;
  }

  factory TypeServicemanagementV1.fromMap(Map<String, dynamic> map) {
    return TypeServicemanagementV1(
      edition: map['edition'] == null ? null : map['edition'] as String,
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<FieldServicemanagementV1>(
              map['fields'],
              (value) => FieldServicemanagementV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      oneofs:
          map['oneofs'] == null ? null : (map['oneofs'] as List).cast<String>(),
      options: map['options'] == null
          ? null
          : pulumi.Input.decodeList<Option>(
              map['options'],
              (value) =>
                  Option.fromMap((value as Map).cast<String, dynamic>())),
      sourceContext: map['sourceContext'] == null
          ? null
          : SourceContextServicemanagementV1.fromMap(
              (map['sourceContext'] as Map).cast<String, dynamic>()),
      syntax: map['syntax'] == null
          ? null
          : TypeSyntax.fromValue(map['syntax'] as String),
    );
  }
}
