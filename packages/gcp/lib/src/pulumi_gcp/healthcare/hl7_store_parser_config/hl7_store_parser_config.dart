// ignore_for_file: unused_element, unnecessary_cast

class Hl7StoreParserConfig {
  /// Determines whether messages with no header are allowed.
  final bool? allowNullHeader;

  /// JSON encoded string for schemas used to parse messages in this
  /// store if schematized parsing is desired.
  final String? schema;

  /// Byte(s) to be used as the segment terminator. If this is unset, '\r' will be used as segment terminator.
  /// A base64-encoded string.
  final String? segmentTerminator;

  /// The version of the unschematized parser to be used when a custom `schema` is not set.
  /// Default value is `V1`.
  /// Possible values are: `V1`, `V2`, `V3`.
  final String? version;

  Hl7StoreParserConfig({
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
      map['schema'] = schemaValue;
    }
    final segmentTerminatorValue = segmentTerminator;
    if (segmentTerminatorValue != null) {
      map['segmentTerminator'] = segmentTerminatorValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory Hl7StoreParserConfig.fromMap(Map<String, dynamic> map) {
    return Hl7StoreParserConfig(
      allowNullHeader: map['allowNullHeader'] == null
          ? null
          : map['allowNullHeader'] as bool,
      schema: map['schema'] == null ? null : map['schema'] as String,
      segmentTerminator: map['segmentTerminator'] == null
          ? null
          : map['segmentTerminator'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
