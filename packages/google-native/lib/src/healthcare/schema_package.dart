// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_schema_config.dart';
import 'hl7_types_config.dart';
import 'schema_package_schematized_parsing_type.dart';
import 'schema_package_unexpected_segment_handling.dart';

/// A schema package contains a set of schemas and type definitions.
class SchemaPackage {
  /// Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  final bool? ignoreMinOccurs;
  /// Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  final List<Hl7SchemaConfig>? schemas;
  /// Determines how messages that fail to parse are handled.
  final SchemaPackageSchematizedParsingType? schematizedParsingType;
  /// Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  final List<Hl7TypesConfig>? types;
  /// Determines how unexpected segments (segments not matched to the schema) are handled.
  final SchemaPackageUnexpectedSegmentHandling? unexpectedSegmentHandling;

  /// Creates a new [SchemaPackage].
  /// [ignoreMinOccurs] Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  /// [schemas] Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  /// [schematizedParsingType] Determines how messages that fail to parse are handled.
  /// [types] Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  /// [unexpectedSegmentHandling] Determines how unexpected segments (segments not matched to the schema) are handled.
  SchemaPackage({
    this.ignoreMinOccurs,
    this.schemas,
    this.schematizedParsingType,
    this.types,
    this.unexpectedSegmentHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMinOccurs': ?ignoreMinOccurs,
      'schemas': ?schemas == null ? null : pulumi.Input.encodeList<Hl7SchemaConfig, Map<String, dynamic>>(schemas!, (value) => value.toMap()),
      'schematizedParsingType': ?schematizedParsingType == null ? null : schematizedParsingType!.value,
      'types': ?types == null ? null : pulumi.Input.encodeList<Hl7TypesConfig, Map<String, dynamic>>(types!, (value) => value.toMap()),
      'unexpectedSegmentHandling': ?unexpectedSegmentHandling == null ? null : unexpectedSegmentHandling!.value,
    };
  }

  factory SchemaPackage.fromMap(Map<String, dynamic> map) {
    return SchemaPackage(
      ignoreMinOccurs: map['ignoreMinOccurs'] == null ? null : map['ignoreMinOccurs'] as bool,
      schemas: map['schemas'] == null ? null : pulumi.Input.decodeList<Hl7SchemaConfig>(map['schemas'], (value) => Hl7SchemaConfig.fromMap((value as Map).cast<String, dynamic>())),
      schematizedParsingType: map['schematizedParsingType'] == null ? null : SchemaPackageSchematizedParsingType.fromValue(map['schematizedParsingType'] as String),
      types: map['types'] == null ? null : pulumi.Input.decodeList<Hl7TypesConfig>(map['types'], (value) => Hl7TypesConfig.fromMap((value as Map).cast<String, dynamic>())),
      unexpectedSegmentHandling: map['unexpectedSegmentHandling'] == null ? null : SchemaPackageUnexpectedSegmentHandling.fromValue(map['unexpectedSegmentHandling'] as String),
    );
  }
}

