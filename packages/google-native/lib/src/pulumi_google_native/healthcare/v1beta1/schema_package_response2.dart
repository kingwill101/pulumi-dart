// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'hl7_schema_config_response2.dart';
import 'hl7_types_config_response2.dart';

/// A schema package contains a set of schemas and type definitions.
class SchemaPackageResponse2 {
  /// Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  final bool ignoreMinOccurs;

  /// Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  final List<Hl7SchemaConfigResponse2> schemas;

  /// Determines how messages that fail to parse are handled.
  final String schematizedParsingType;

  /// Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  final List<Hl7TypesConfigResponse2> types;

  /// Determines how unexpected segments (segments not matched to the schema) are handled.
  final String unexpectedSegmentHandling;

  SchemaPackageResponse2({
    required this.ignoreMinOccurs,
    required this.schemas,
    required this.schematizedParsingType,
    required this.types,
    required this.unexpectedSegmentHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ignoreMinOccurs'] = ignoreMinOccurs;
    map['schemas'] =
        Input.encodeList<Hl7SchemaConfigResponse2, Map<String, dynamic>>(
            schemas, (value) => value.toMap());
    map['schematizedParsingType'] = schematizedParsingType;
    map['types'] =
        Input.encodeList<Hl7TypesConfigResponse2, Map<String, dynamic>>(
            types, (value) => value.toMap());
    map['unexpectedSegmentHandling'] = unexpectedSegmentHandling;
    return map;
  }

  factory SchemaPackageResponse2.fromMap(Map<String, dynamic> map) {
    return SchemaPackageResponse2(
      ignoreMinOccurs: map['ignoreMinOccurs'] as bool,
      schemas: Input.decodeList<Hl7SchemaConfigResponse2>(
          map['schemas'],
          (value) => Hl7SchemaConfigResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      schematizedParsingType: map['schematizedParsingType'] as String,
      types: Input.decodeList<Hl7TypesConfigResponse2>(
          map['types'],
          (value) => Hl7TypesConfigResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      unexpectedSegmentHandling: map['unexpectedSegmentHandling'] as String,
    );
  }
}
