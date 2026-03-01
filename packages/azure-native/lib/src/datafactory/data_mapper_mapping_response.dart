// ignore_for_file: unused_element, unnecessary_cast

import 'mapper_attribute_mappings_response.dart';
import 'mapper_connection_reference_response.dart';

/// Source and target table mapping details.
class DataMapperMappingResponse {
  /// This holds the user provided attribute mapping information.
  final MapperAttributeMappingsResponse? attributeMappingInfo;
  /// The connection reference for the source connection.
  final MapperConnectionReferenceResponse? sourceConnectionReference;
  /// This holds the source denormalization information used while joining multiple sources.
  final dynamic sourceDenormalizeInfo;
  /// Name of the source table
  final String? sourceEntityName;
  /// Name of the target table
  final String? targetEntityName;

  /// Creates a new [DataMapperMappingResponse].
  /// [attributeMappingInfo] This holds the user provided attribute mapping information.
  /// [sourceConnectionReference] The connection reference for the source connection.
  /// [sourceDenormalizeInfo] This holds the source denormalization information used while joining multiple sources.
  /// [sourceEntityName] Name of the source table
  /// [targetEntityName] Name of the target table
  DataMapperMappingResponse({
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

  factory DataMapperMappingResponse.fromMap(Map<String, dynamic> map) {
    return DataMapperMappingResponse(
      attributeMappingInfo: map['attributeMappingInfo'] == null ? null : MapperAttributeMappingsResponse.fromMap((map['attributeMappingInfo'] as Map).cast<String, dynamic>()),
      sourceConnectionReference: map['sourceConnectionReference'] == null ? null : MapperConnectionReferenceResponse.fromMap((map['sourceConnectionReference'] as Map).cast<String, dynamic>()),
      sourceDenormalizeInfo: map['sourceDenormalizeInfo'] == null ? null : map['sourceDenormalizeInfo'],
      sourceEntityName: map['sourceEntityName'] == null ? null : map['sourceEntityName'] as String,
      targetEntityName: map['targetEntityName'] == null ? null : map['targetEntityName'] as String,
    );
  }
}

