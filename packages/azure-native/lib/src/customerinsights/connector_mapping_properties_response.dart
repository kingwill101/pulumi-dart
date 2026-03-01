// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_mapping_availability_response.dart';
import 'connector_mapping_complete_operation_response.dart';
import 'connector_mapping_error_management_response.dart';
import 'connector_mapping_format_response.dart';
import 'connector_mapping_structure_response.dart';

/// The connector mapping properties.
class ConnectorMappingPropertiesResponse {
  /// The availability of mapping property.
  final ConnectorMappingAvailabilityResponse availability;
  /// The operation after import is done.
  final ConnectorMappingCompleteOperationResponse completeOperation;
  /// The error management setting for the mapping.
  final ConnectorMappingErrorManagementResponse errorManagement;
  /// The file filter for the mapping.
  final String? fileFilter;
  /// The folder path for the mapping.
  final String? folderPath;
  /// The format of mapping property.
  final ConnectorMappingFormatResponse format;
  /// If the file contains a header or not.
  final bool? hasHeader;
  /// Ingestion mapping information at property level.
  final List<ConnectorMappingStructureResponse> structure;

  /// Creates a new [ConnectorMappingPropertiesResponse].
  /// [availability] The availability of mapping property.
  /// [completeOperation] The operation after import is done.
  /// [errorManagement] The error management setting for the mapping.
  /// [fileFilter] The file filter for the mapping.
  /// [folderPath] The folder path for the mapping.
  /// [format] The format of mapping property.
  /// [hasHeader] If the file contains a header or not.
  /// [structure] Ingestion mapping information at property level.
  ConnectorMappingPropertiesResponse({
    required this.availability,
    required this.completeOperation,
    required this.errorManagement,
    this.fileFilter,
    this.folderPath,
    required this.format,
    this.hasHeader,
    required this.structure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availability': availability.toMap(),
      'completeOperation': completeOperation.toMap(),
      'errorManagement': errorManagement.toMap(),
      'fileFilter': ?fileFilter,
      'folderPath': ?folderPath,
      'format': format.toMap(),
      'hasHeader': ?hasHeader,
      'structure': pulumi.Input.encodeList<ConnectorMappingStructureResponse, Map<String, dynamic>>(structure, (value) => value.toMap()),
    };
  }

  factory ConnectorMappingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingPropertiesResponse(
      availability: ConnectorMappingAvailabilityResponse.fromMap((map['availability'] as Map).cast<String, dynamic>()),
      completeOperation: ConnectorMappingCompleteOperationResponse.fromMap((map['completeOperation'] as Map).cast<String, dynamic>()),
      errorManagement: ConnectorMappingErrorManagementResponse.fromMap((map['errorManagement'] as Map).cast<String, dynamic>()),
      fileFilter: map['fileFilter'] == null ? null : map['fileFilter'] as String,
      folderPath: map['folderPath'] == null ? null : map['folderPath'] as String,
      format: ConnectorMappingFormatResponse.fromMap((map['format'] as Map).cast<String, dynamic>()),
      hasHeader: map['hasHeader'] == null ? null : map['hasHeader'] as bool,
      structure: pulumi.Input.decodeList<ConnectorMappingStructureResponse>(map['structure'], (value) => ConnectorMappingStructureResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

