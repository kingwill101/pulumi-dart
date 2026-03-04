// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_attribute_mappings.dart';
import 'mapper_connection_reference.dart';

/// Source and target table mapping details.
class DataMapperMapping {
  /// This holds the user provided attribute mapping information.
  final pulumi.Input<MapperAttributeMappings>? attributeMappingInfo;

  /// The connection reference for the source connection.
  final pulumi.Input<MapperConnectionReference>? sourceConnectionReference;

  /// This holds the source denormalization information used while joining multiple sources.
  final pulumi.Input<dynamic>? sourceDenormalizeInfo;

  /// Name of the source table
  final pulumi.Input<String>? sourceEntityName;

  /// Name of the target table
  final pulumi.Input<String>? targetEntityName;

  /// Creates a new [DataMapperMapping].
  /// [attributeMappingInfo] This holds the user provided attribute mapping information.
  /// [sourceConnectionReference] The connection reference for the source connection.
  /// [sourceDenormalizeInfo] This holds the source denormalization information used while joining multiple sources.
  /// [sourceEntityName] Name of the source table
  /// [targetEntityName] Name of the target table
  DataMapperMapping({
    this.attributeMappingInfo,
    this.sourceConnectionReference,
    this.sourceDenormalizeInfo,
    this.sourceEntityName,
    this.targetEntityName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeMappingInfo':
          ?pulumi.Input.mapOptionalInputValue<
            MapperAttributeMappings,
            Map<String, dynamic>
          >(attributeMappingInfo, (value) => value.toMap()),
      'sourceConnectionReference':
          ?pulumi.Input.mapOptionalInputValue<
            MapperConnectionReference,
            Map<String, dynamic>
          >(sourceConnectionReference, (value) => value.toMap()),
      'sourceDenormalizeInfo': ?sourceDenormalizeInfo,
      'sourceEntityName': ?sourceEntityName,
      'targetEntityName': ?targetEntityName,
    };
  }

  factory DataMapperMapping.fromMap(Map<String, dynamic> map) {
    return DataMapperMapping(
      attributeMappingInfo: (() {
        final guardedValue = map['attributeMappingInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MapperAttributeMappings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceConnectionReference: (() {
        final guardedValue = map['sourceConnectionReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MapperConnectionReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceDenormalizeInfo: (() {
        final guardedValue = map['sourceDenormalizeInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sourceEntityName: (() {
        final guardedValue = map['sourceEntityName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetEntityName: (() {
        final guardedValue = map['targetEntityName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
