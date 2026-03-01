// ignore_for_file: unused_element, unnecessary_cast

import 'mapper_attribute_mappings.dart';
import 'mapper_connection_reference.dart';

/// Source and target table mapping details.
class DataMapperMapping {
  /// This holds the user provided attribute mapping information.
  final MapperAttributeMappings? attributeMappingInfo;
  /// The connection reference for the source connection.
  final MapperConnectionReference? sourceConnectionReference;
  /// This holds the source denormalization information used while joining multiple sources.
  final dynamic sourceDenormalizeInfo;
  /// Name of the source table
  final String? sourceEntityName;
  /// Name of the target table
  final String? targetEntityName;

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
      'attributeMappingInfo': ?attributeMappingInfo == null ? null : attributeMappingInfo!.toMap(),
      'sourceConnectionReference': ?sourceConnectionReference == null ? null : sourceConnectionReference!.toMap(),
      'sourceDenormalizeInfo': ?sourceDenormalizeInfo,
      'sourceEntityName': ?sourceEntityName,
      'targetEntityName': ?targetEntityName,
    };
  }

  factory DataMapperMapping.fromMap(Map<String, dynamic> map) {
    return DataMapperMapping(
      attributeMappingInfo: map['attributeMappingInfo'] == null ? null : MapperAttributeMappings.fromMap((map['attributeMappingInfo'] as Map).cast<String, dynamic>()),
      sourceConnectionReference: map['sourceConnectionReference'] == null ? null : MapperConnectionReference.fromMap((map['sourceConnectionReference'] as Map).cast<String, dynamic>()),
      sourceDenormalizeInfo: map['sourceDenormalizeInfo'] == null ? null : map['sourceDenormalizeInfo'],
      sourceEntityName: map['sourceEntityName'] == null ? null : map['sourceEntityName'] as String,
      targetEntityName: map['targetEntityName'] == null ? null : map['targetEntityName'] as String,
    );
  }
}

