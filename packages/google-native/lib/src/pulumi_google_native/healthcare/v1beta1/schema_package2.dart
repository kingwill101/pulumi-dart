// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'hl7_schema_config2.dart';
import 'hl7_types_config2.dart';
import 'schema_package_schematized_parsing_type2.dart';
import 'schema_package_unexpected_segment_handling2.dart';

/// A schema package contains a set of schemas and type definitions.
class SchemaPackage2 {
  /// Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  final bool? ignoreMinOccurs;

  /// Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  final List<Hl7SchemaConfig2>? schemas;

  /// Determines how messages that fail to parse are handled.
  final SchemaPackageSchematizedParsingType2? schematizedParsingType;

  /// Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  final List<Hl7TypesConfig2>? types;

  /// Determines how unexpected segments (segments not matched to the schema) are handled.
  final SchemaPackageUnexpectedSegmentHandling2? unexpectedSegmentHandling;

  SchemaPackage2({
    this.ignoreMinOccurs,
    this.schemas,
    this.schematizedParsingType,
    this.types,
    this.unexpectedSegmentHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ignoreMinOccursValue = ignoreMinOccurs;
    if (ignoreMinOccursValue != null) {
      map['ignoreMinOccurs'] = ignoreMinOccursValue;
    }
    final schemasValue = schemas;
    if (schemasValue != null) {
      map['schemas'] = Input.encodeList<Hl7SchemaConfig2, Map<String, dynamic>>(
          schemasValue, (value) => value.toMap());
    }
    final schematizedParsingTypeValue = schematizedParsingType;
    if (schematizedParsingTypeValue != null) {
      map['schematizedParsingType'] = schematizedParsingTypeValue.value;
    }
    final typesValue = types;
    if (typesValue != null) {
      map['types'] = Input.encodeList<Hl7TypesConfig2, Map<String, dynamic>>(
          typesValue, (value) => value.toMap());
    }
    final unexpectedSegmentHandlingValue = unexpectedSegmentHandling;
    if (unexpectedSegmentHandlingValue != null) {
      map['unexpectedSegmentHandling'] = unexpectedSegmentHandlingValue.value;
    }
    return map;
  }

  factory SchemaPackage2.fromMap(Map<String, dynamic> map) {
    return SchemaPackage2(
      ignoreMinOccurs: map['ignoreMinOccurs'] == null
          ? null
          : map['ignoreMinOccurs'] as bool,
      schemas: map['schemas'] == null
          ? null
          : Input.decodeList<Hl7SchemaConfig2>(
              map['schemas'],
              (value) => Hl7SchemaConfig2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      schematizedParsingType: map['schematizedParsingType'] == null
          ? null
          : SchemaPackageSchematizedParsingType2.fromValue(
              map['schematizedParsingType'] as String),
      types: map['types'] == null
          ? null
          : Input.decodeList<Hl7TypesConfig2>(
              map['types'],
              (value) => Hl7TypesConfig2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      unexpectedSegmentHandling: map['unexpectedSegmentHandling'] == null
          ? null
          : SchemaPackageUnexpectedSegmentHandling2.fromValue(
              map['unexpectedSegmentHandling'] as String),
    );
  }
}
