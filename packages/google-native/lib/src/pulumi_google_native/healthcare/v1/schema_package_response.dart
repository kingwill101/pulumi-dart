// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'hl7_schema_config_response.dart';
import 'hl7_types_config_response.dart';

/// A schema package contains a set of schemas and type definitions.
class SchemaPackageResponse {
  /// Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  final bool ignoreMinOccurs;

  /// Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  final List<Hl7SchemaConfigResponse> schemas;

  /// Determines how messages that fail to parse are handled.
  final String schematizedParsingType;

  /// Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  final List<Hl7TypesConfigResponse> types;

  /// Determines how unexpected segments (segments not matched to the schema) are handled.
  final String unexpectedSegmentHandling;

  SchemaPackageResponse({
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
        Input.encodeList<Hl7SchemaConfigResponse, Map<String, dynamic>>(
            schemas, (value) => value.toMap());
    map['schematizedParsingType'] = schematizedParsingType;
    map['types'] =
        Input.encodeList<Hl7TypesConfigResponse, Map<String, dynamic>>(
            types, (value) => value.toMap());
    map['unexpectedSegmentHandling'] = unexpectedSegmentHandling;
    return map;
  }

  factory SchemaPackageResponse.fromMap(Map<String, dynamic> map) {
    return SchemaPackageResponse(
      ignoreMinOccurs: map['ignoreMinOccurs'] as bool,
      schemas: Input.decodeList<Hl7SchemaConfigResponse>(
          map['schemas'],
          (value) => Hl7SchemaConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      schematizedParsingType: map['schematizedParsingType'] as String,
      types: Input.decodeList<Hl7TypesConfigResponse>(
          map['types'],
          (value) => Hl7TypesConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      unexpectedSegmentHandling: map['unexpectedSegmentHandling'] as String,
    );
  }
}
