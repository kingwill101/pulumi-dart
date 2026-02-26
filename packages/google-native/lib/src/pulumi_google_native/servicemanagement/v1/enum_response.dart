// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'enum_value_response.dart';
import 'option_response.dart';
import 'source_context_response3.dart';

/// Enum type definition.
class EnumResponse {
  /// The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  final String edition;

  /// Enum value definitions.
  final List<EnumValueResponse> enumvalue;

  /// Enum type name.
  final String name;

  /// Protocol buffer options.
  final List<OptionResponse> options;

  /// The source context.
  final SourceContextResponse3 sourceContext;

  /// The source syntax.
  final String syntax;

  EnumResponse({
    required this.edition,
    required this.enumvalue,
    required this.name,
    required this.options,
    required this.sourceContext,
    required this.syntax,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['edition'] = edition;
    map['enumvalue'] =
        Input.encodeList<EnumValueResponse, Map<String, dynamic>>(
            enumvalue, (value) => value.toMap());
    map['name'] = name;
    map['options'] = Input.encodeList<OptionResponse, Map<String, dynamic>>(
        options, (value) => value.toMap());
    map['sourceContext'] = sourceContext.toMap();
    map['syntax'] = syntax;
    return map;
  }

  factory EnumResponse.fromMap(Map<String, dynamic> map) {
    return EnumResponse(
      edition: map['edition'] as String,
      enumvalue: Input.decodeList<EnumValueResponse>(
          map['enumvalue'],
          (value) => EnumValueResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
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
