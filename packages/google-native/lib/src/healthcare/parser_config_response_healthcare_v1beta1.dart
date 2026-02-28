// ignore_for_file: unused_element, unnecessary_cast

import 'schema_package_response_healthcare_v1beta1.dart';

/// The configuration for the parser. It determines how the server parses the messages.
class ParserConfigResponseHealthcareV1beta1 {
  /// Determines whether messages with no header are allowed.
  final bool allowNullHeader;

  /// Schemas used to parse messages in this store, if schematized parsing is desired.
  final SchemaPackageResponseHealthcareV1beta1 schema;

  /// Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment terminator, matching the HL7 version 2 specification.
  final String segmentTerminator;

  /// Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
  final String version;

  /// Creates a new [ParserConfigResponseHealthcareV1beta1].
  /// [allowNullHeader] Determines whether messages with no header are allowed.
  /// [schema] Schemas used to parse messages in this store, if schematized parsing is desired.
  /// [segmentTerminator] Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment terminator, matching the HL7 version 2 specification.
  /// [version] Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
  ParserConfigResponseHealthcareV1beta1({
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

  factory ParserConfigResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ParserConfigResponseHealthcareV1beta1(
      allowNullHeader: map['allowNullHeader'] as bool,
      schema: SchemaPackageResponseHealthcareV1beta1.fromMap(
          (map['schema'] as Map).cast<String, dynamic>()),
      segmentTerminator: map['segmentTerminator'] as String,
      version: map['version'] as String,
    );
  }
}
