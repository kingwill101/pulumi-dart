// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enum_syntax.dart';
import 'enum_value.dart';
import 'option.dart';
import 'source_context.dart';

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
  final SourceContext? sourceContext;

  /// The source syntax.
  final EnumSyntax? syntax;

  /// Creates a new [Enum].
  /// [edition] The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  /// [enumvalue] Enum value definitions.
  /// [name] Enum type name.
  /// [options] Protocol buffer options.
  /// [sourceContext] The source context.
  /// [syntax] The source syntax.
  Enum({
    this.edition,
    this.enumvalue,
    this.name,
    this.options,
    this.sourceContext,
    this.syntax,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edition': ?edition,
      'enumvalue': ?enumvalue == null
          ? null
          : pulumi.Input.encodeList<EnumValue, Map<String, dynamic>>(
              enumvalue!,
              (value) => value.toMap(),
            ),
      'name': ?name,
      'options': ?options == null
          ? null
          : pulumi.Input.encodeList<Option, Map<String, dynamic>>(
              options!,
              (value) => value.toMap(),
            ),
      'sourceContext': ?sourceContext == null ? null : sourceContext!.toMap(),
      'syntax': ?syntax == null ? null : syntax!.value,
    };
  }

  factory Enum.fromMap(Map<String, dynamic> map) {
    return Enum(
      edition: map['edition'] == null ? null : map['edition'] as String,
      enumvalue: map['enumvalue'] == null
          ? null
          : pulumi.Input.decodeList<EnumValue>(
              map['enumvalue'],
              (value) =>
                  EnumValue.fromMap((value as Map).cast<String, dynamic>()),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      options: map['options'] == null
          ? null
          : pulumi.Input.decodeList<Option>(
              map['options'],
              (value) => Option.fromMap((value as Map).cast<String, dynamic>()),
            ),
      sourceContext: map['sourceContext'] == null
          ? null
          : SourceContext.fromMap(
              (map['sourceContext'] as Map).cast<String, dynamic>(),
            ),
      syntax: map['syntax'] == null
          ? null
          : EnumSyntax.fromValue(map['syntax'] as String),
    );
  }
}
