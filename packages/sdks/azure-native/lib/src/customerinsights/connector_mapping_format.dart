// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'format_types.dart';

/// Connector mapping property format.
class ConnectorMappingFormat {
  /// The oData language.
  final pulumi.Input<String>? acceptLanguage;
  /// Character separating array elements.
  final pulumi.Input<String>? arraySeparator;
  /// The character that signifies a break between columns.
  final pulumi.Input<String>? columnDelimiter;
  /// The type mapping format.
  final pulumi.Input<FormatTypes> formatType;
  /// Quote character, used to indicate enquoted fields.
  final pulumi.Input<String>? quoteCharacter;
  /// Escape character for quotes, can be the same as the quoteCharacter.
  final pulumi.Input<String>? quoteEscapeCharacter;

  /// Creates a new [ConnectorMappingFormat].
  /// [acceptLanguage] The oData language.
  /// [arraySeparator] Character separating array elements.
  /// [columnDelimiter] The character that signifies a break between columns.
  /// [formatType] The type mapping format.
  /// [quoteCharacter] Quote character, used to indicate enquoted fields.
  /// [quoteEscapeCharacter] Escape character for quotes, can be the same as the quoteCharacter.
  ConnectorMappingFormat({
    this.acceptLanguage,
    this.arraySeparator,
    this.columnDelimiter,
    required this.formatType,
    this.quoteCharacter,
    this.quoteEscapeCharacter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'arraySeparator': ?arraySeparator,
      'columnDelimiter': ?columnDelimiter,
      'formatType': pulumi.Input.mapInputValue<FormatTypes, String>(formatType, (value) => value.value),
      'quoteCharacter': ?quoteCharacter,
      'quoteEscapeCharacter': ?quoteEscapeCharacter,
    };
  }

  factory ConnectorMappingFormat.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingFormat(
      acceptLanguage: map['acceptLanguage'] == null ? null : (map['acceptLanguage'] as String).input(),
      arraySeparator: map['arraySeparator'] == null ? null : (map['arraySeparator'] as String).input(),
      columnDelimiter: map['columnDelimiter'] == null ? null : (map['columnDelimiter'] as String).input(),
      formatType: (FormatTypes.fromValue(map['formatType'] as String)).input(),
      quoteCharacter: map['quoteCharacter'] == null ? null : (map['quoteCharacter'] as String).input(),
      quoteEscapeCharacter: map['quoteEscapeCharacter'] == null ? null : (map['quoteEscapeCharacter'] as String).input(),
    );
  }
}

