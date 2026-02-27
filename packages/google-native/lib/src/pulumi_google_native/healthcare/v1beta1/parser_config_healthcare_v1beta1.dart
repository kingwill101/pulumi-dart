// ignore_for_file: unused_element, unnecessary_cast

import 'parser_config_version_healthcare_v1beta1.dart';
import 'schema_package_healthcare_v1beta1.dart';

/// The configuration for the parser. It determines how the server parses the messages.
class ParserConfigHealthcareV1beta1 {
  /// Determines whether messages with no header are allowed.
  final bool? allowNullHeader;

  /// Schemas used to parse messages in this store, if schematized parsing is desired.
  final SchemaPackageHealthcareV1beta1? schema;

  /// Byte(s) to use as the segment terminator. If this is unset, '\r' is used as segment terminator, matching the HL7 version 2 specification.
  final String? segmentTerminator;

  /// Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
  final ParserConfigVersionHealthcareV1beta1? version;

  ParserConfigHealthcareV1beta1({
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

  factory ParserConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return ParserConfigHealthcareV1beta1(
      allowNullHeader: map['allowNullHeader'] == null
          ? null
          : map['allowNullHeader'] as bool,
      schema: map['schema'] == null
          ? null
          : SchemaPackageHealthcareV1beta1.fromMap(
              (map['schema'] as Map).cast<String, dynamic>()),
      segmentTerminator: map['segmentTerminator'] == null
          ? null
          : map['segmentTerminator'] as String,
      version: map['version'] == null
          ? null
          : ParserConfigVersionHealthcareV1beta1.fromValue(
              map['version'] as String),
    );
  }
}
