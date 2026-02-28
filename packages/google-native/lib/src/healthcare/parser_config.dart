// ignore_for_file: unused_element, unnecessary_cast

import 'parser_config_version.dart';
import 'schema_package.dart';

/// The configuration for the parser. It determines how the server parses the messages.
class ParserConfig {
  /// Determines whether messages with no header are allowed.
  final bool? allowNullHeader;

  /// Schemas used to parse messages in this store, if schematized parsing is desired.
  final SchemaPackage? schema;

  /// Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment terminator, matching the HL7 version 2 specification.
  final String? segmentTerminator;

  /// Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
  final ParserConfigVersion? version;

  /// Creates a new [ParserConfig].
  /// [allowNullHeader] Determines whether messages with no header are allowed.
  /// [schema] Schemas used to parse messages in this store, if schematized parsing is desired.
  /// [segmentTerminator] Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment terminator, matching the HL7 version 2 specification.
  /// [version] Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
  ParserConfig({
    this.allowNullHeader,
    this.schema,
    this.segmentTerminator,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowNullHeaderValue = allowNullHeader;
    if (allowNullHeaderValue != null) {
      map['allowNullHeader'] = allowNullHeaderValue;
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = schemaValue.toMap();
    }
    final segmentTerminatorValue = segmentTerminator;
    if (segmentTerminatorValue != null) {
      map['segmentTerminator'] = segmentTerminatorValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue.value;
    }
    return map;
  }

  factory ParserConfig.fromMap(Map<String, dynamic> map) {
    return ParserConfig(
      allowNullHeader: map['allowNullHeader'] == null
          ? null
          : map['allowNullHeader'] as bool,
      schema: map['schema'] == null
          ? null
          : SchemaPackage.fromMap(
              (map['schema'] as Map).cast<String, dynamic>()),
      segmentTerminator: map['segmentTerminator'] == null
          ? null
          : map['segmentTerminator'] as String,
      version: map['version'] == null
          ? null
          : ParserConfigVersion.fromValue(map['version'] as String),
    );
  }
}
