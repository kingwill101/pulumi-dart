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
  final pulumi.Input<ConnectorMappingAvailabilityResponse> availability;
  /// The operation after import is done.
  final pulumi.Input<ConnectorMappingCompleteOperationResponse> completeOperation;
  /// The error management setting for the mapping.
  final pulumi.Input<ConnectorMappingErrorManagementResponse> errorManagement;
  /// The file filter for the mapping.
  final pulumi.Input<String>? fileFilter;
  /// The folder path for the mapping.
  final pulumi.Input<String>? folderPath;
  /// The format of mapping property.
  final pulumi.Input<ConnectorMappingFormatResponse> format;
  /// If the file contains a header or not.
  final pulumi.Input<bool>? hasHeader;
  /// Ingestion mapping information at property level.
  final pulumi.Input<List<ConnectorMappingStructureResponse>> structure;

  /// Creates a new [ConnectorMappingPropertiesResponse].
  /// [availability] The availability of mapping property.
  /// [completeOperation] The operation after import is done.
  /// [errorManagement] The error management setting for the mapping.
  /// [fileFilter] The file filter for the mapping.
  /// [folderPath] The folder path for the mapping.
  /// [format] The format of mapping property.
  /// [hasHeader] If the file contains a header or not.
  /// [structure] Ingestion mapping information at property level.
  const ConnectorMappingPropertiesResponse({
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
      'availability': pulumi.Input.mapInputValue<ConnectorMappingAvailabilityResponse, Map<String, dynamic>>(availability, (value) => value.toMap()),
      'completeOperation': pulumi.Input.mapInputValue<ConnectorMappingCompleteOperationResponse, Map<String, dynamic>>(completeOperation, (value) => value.toMap()),
      'errorManagement': pulumi.Input.mapInputValue<ConnectorMappingErrorManagementResponse, Map<String, dynamic>>(errorManagement, (value) => value.toMap()),
      'fileFilter': ?fileFilter,
      'folderPath': ?folderPath,
      'format': pulumi.Input.mapInputValue<ConnectorMappingFormatResponse, Map<String, dynamic>>(format, (value) => value.toMap()),
      'hasHeader': ?hasHeader,
      'structure': pulumi.Input.mapInputValue<List<ConnectorMappingStructureResponse>, List<Map<String, dynamic>>>(structure, (value) => pulumi.Input.encodeList<ConnectorMappingStructureResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectorMappingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingPropertiesResponse(
      availability: pulumi.Input.fromValue(ConnectorMappingAvailabilityResponse.fromMap((map['availability']! as Map).cast<String, dynamic>())),
      completeOperation: pulumi.Input.fromValue(ConnectorMappingCompleteOperationResponse.fromMap((map['completeOperation']! as Map).cast<String, dynamic>())),
      errorManagement: pulumi.Input.fromValue(ConnectorMappingErrorManagementResponse.fromMap((map['errorManagement']! as Map).cast<String, dynamic>())),
      fileFilter: (() { final guardedValue = map['fileFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: pulumi.Input.fromValue(ConnectorMappingFormatResponse.fromMap((map['format']! as Map).cast<String, dynamic>())),
      hasHeader: (() { final guardedValue = map['hasHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      structure: pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectorMappingStructureResponse>(map['structure']!, (value) => ConnectorMappingStructureResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

