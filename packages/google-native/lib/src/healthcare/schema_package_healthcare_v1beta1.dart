// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_schema_config_healthcare_v1beta1.dart';
import 'hl7_types_config_healthcare_v1beta1.dart';
import 'schema_package_schematized_parsing_type_healthcare_v1beta1.dart';
import 'schema_package_unexpected_segment_handling_healthcare_v1beta1.dart';

/// A schema package contains a set of schemas and type definitions.
class SchemaPackageHealthcareV1beta1 {
  /// Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  final bool? ignoreMinOccurs;

  /// Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  final List<Hl7SchemaConfigHealthcareV1beta1>? schemas;

  /// Determines how messages that fail to parse are handled.
  final SchemaPackageSchematizedParsingTypeHealthcareV1beta1?
      schematizedParsingType;

  /// Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  final List<Hl7TypesConfigHealthcareV1beta1>? types;

  /// Determines how unexpected segments (segments not matched to the schema) are handled.
  final SchemaPackageUnexpectedSegmentHandlingHealthcareV1beta1?
      unexpectedSegmentHandling;

  /// Creates a new [SchemaPackageHealthcareV1beta1].
  /// [ignoreMinOccurs] Flag to ignore all min_occurs restrictions in the schema. This means that incoming messages can omit any group, segment, field, component, or subcomponent.
  /// [schemas] Schema configs that are layered based on their VersionSources that match the incoming message. Schema configs present in higher indices override those in lower indices with the same message type and trigger event if their VersionSources all match an incoming message.
  /// [schematizedParsingType] Determines how messages that fail to parse are handled.
  /// [types] Schema type definitions that are layered based on their VersionSources that match the incoming message. Type definitions present in higher indices override those in lower indices with the same type name if their VersionSources all match an incoming message.
  /// [unexpectedSegmentHandling] Determines how unexpected segments (segments not matched to the schema) are handled.
  SchemaPackageHealthcareV1beta1({
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
      map['schemas'] = pulumi.Input.encodeList<Hl7SchemaConfigHealthcareV1beta1,
          Map<String, dynamic>>(schemasValue, (value) => value.toMap());
    }
    final schematizedParsingTypeValue = schematizedParsingType;
    if (schematizedParsingTypeValue != null) {
      map['schematizedParsingType'] = schematizedParsingTypeValue.value;
    }
    final typesValue = types;
    if (typesValue != null) {
      map['types'] = pulumi.Input.encodeList<Hl7TypesConfigHealthcareV1beta1,
          Map<String, dynamic>>(typesValue, (value) => value.toMap());
    }
    final unexpectedSegmentHandlingValue = unexpectedSegmentHandling;
    if (unexpectedSegmentHandlingValue != null) {
      map['unexpectedSegmentHandling'] = unexpectedSegmentHandlingValue.value;
    }
    return map;
  }

  factory SchemaPackageHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return SchemaPackageHealthcareV1beta1(
      ignoreMinOccurs: map['ignoreMinOccurs'] == null
          ? null
          : map['ignoreMinOccurs'] as bool,
      schemas: map['schemas'] == null
          ? null
          : pulumi.Input.decodeList<Hl7SchemaConfigHealthcareV1beta1>(
              map['schemas'],
              (value) => Hl7SchemaConfigHealthcareV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      schematizedParsingType: map['schematizedParsingType'] == null
          ? null
          : SchemaPackageSchematizedParsingTypeHealthcareV1beta1.fromValue(
              map['schematizedParsingType'] as String),
      types: map['types'] == null
          ? null
          : pulumi.Input.decodeList<Hl7TypesConfigHealthcareV1beta1>(
              map['types'],
              (value) => Hl7TypesConfigHealthcareV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      unexpectedSegmentHandling: map['unexpectedSegmentHandling'] == null
          ? null
          : SchemaPackageUnexpectedSegmentHandlingHealthcareV1beta1.fromValue(
              map['unexpectedSegmentHandling'] as String),
    );
  }
}
