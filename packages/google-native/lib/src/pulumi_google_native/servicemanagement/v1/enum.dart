// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'enum_syntax.dart';
import 'enum_value.dart';
import 'option.dart';
import 'source_context3.dart';

/// Enum type definition.
class Enum {
  /// The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  final String? edition;

  /// Enum value definitions.
  final List<EnumValue>? enumvalue;

  /// Enum type name.
  final String? name;

  /// Protocol buffer options.
  final List<Option>? options;

  /// The source context.
  final SourceContext3? sourceContext;

  /// The source syntax.
  final EnumSyntax? syntax;

  Enum({
    this.edition,
    this.enumvalue,
    this.name,
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
    final enumvalueValue = enumvalue;
    if (enumvalueValue != null) {
      map['enumvalue'] = Input.encodeList<EnumValue, Map<String, dynamic>>(
          enumvalueValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = Input.encodeList<Option, Map<String, dynamic>>(
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

  factory Enum.fromMap(Map<String, dynamic> map) {
    return Enum(
      edition: map['edition'] == null ? null : map['edition'] as String,
      enumvalue: map['enumvalue'] == null
          ? null
          : Input.decodeList<EnumValue>(
              map['enumvalue'],
              (value) =>
                  EnumValue.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      options: map['options'] == null
          ? null
          : Input.decodeList<Option>(
              map['options'],
              (value) =>
                  Option.fromMap((value as Map).cast<String, dynamic>())),
      sourceContext: map['sourceContext'] == null
          ? null
          : SourceContext3.fromMap(
              (map['sourceContext'] as Map).cast<String, dynamic>()),
      syntax: map['syntax'] == null
          ? null
          : EnumSyntax.fromValue(map['syntax'] as String),
    );
  }
}
