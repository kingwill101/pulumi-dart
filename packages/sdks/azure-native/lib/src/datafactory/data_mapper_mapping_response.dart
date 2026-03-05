// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_attribute_mappings_response.dart';
import 'mapper_connection_reference_response.dart';

/// Source and target table mapping details.
class DataMapperMappingResponse {
  /// This holds the user provided attribute mapping information.
  final pulumi.Input<MapperAttributeMappingsResponse>? attributeMappingInfo;
  /// The connection reference for the source connection.
  final pulumi.Input<MapperConnectionReferenceResponse>? sourceConnectionReference;
  /// This holds the source denormalization information used while joining multiple sources.
  final pulumi.Input<dynamic>? sourceDenormalizeInfo;
  /// Name of the source table
  final pulumi.Input<String>? sourceEntityName;
  /// Name of the target table
  final pulumi.Input<String>? targetEntityName;

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
      'attributeMappingInfo': ?pulumi.Input.mapOptionalInputValue<MapperAttributeMappingsResponse, Map<String, dynamic>>(attributeMappingInfo, (value) => value.toMap()),
      'sourceConnectionReference': ?pulumi.Input.mapOptionalInputValue<MapperConnectionReferenceResponse, Map<String, dynamic>>(sourceConnectionReference, (value) => value.toMap()),
      'sourceDenormalizeInfo': ?sourceDenormalizeInfo,
      'sourceEntityName': ?sourceEntityName,
      'targetEntityName': ?targetEntityName,
    };
  }

  factory DataMapperMappingResponse.fromMap(Map<String, dynamic> map) {
    return DataMapperMappingResponse(
      attributeMappingInfo: (() { final guardedValue = map['attributeMappingInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MapperAttributeMappingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceConnectionReference: (() { final guardedValue = map['sourceConnectionReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MapperConnectionReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceDenormalizeInfo: (() { final guardedValue = map['sourceDenormalizeInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceEntityName: (() { final guardedValue = map['sourceEntityName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetEntityName: (() { final guardedValue = map['targetEntityName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

