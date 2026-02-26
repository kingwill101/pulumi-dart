// ignore_for_file: unused_element, unnecessary_cast

import 'schema_package_response2.dart';

/// The configuration for the parser. It determines how the server parses the messages.
class ParserConfigResponse2 {
  /// Determines whether messages with no header are allowed.
  final bool allowNullHeader;

  /// Schemas used to parse messages in this store, if schematized parsing is desired.
  final SchemaPackageResponse2 schema;

  /// Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment terminator, matching the HL7 version 2 specification.
  final String segmentTerminator;

  /// Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
  final String version;

  ParserConfigResponse2({
    required this.allowNullHeader,
    required this.schema,
    required this.segmentTerminator,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowNullHeader'] = allowNullHeader;
    map['schema'] = schema.toMap();
    map['segmentTerminator'] = segmentTerminator;
    map['version'] = version;
    return map;
  }

  factory ParserConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ParserConfigResponse2(
      allowNullHeader: map['allowNullHeader'] as bool,
      schema: SchemaPackageResponse2.fromMap(
          (map['schema'] as Map).cast<String, dynamic>()),
      segmentTerminator: map['segmentTerminator'] as String,
      version: map['version'] as String,
    );
  }
}
