// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_mapping_availability.dart';
import 'connector_mapping_complete_operation.dart';
import 'connector_mapping_error_management.dart';
import 'connector_mapping_format.dart';
import 'connector_mapping_structure.dart';

/// The connector mapping properties.
class ConnectorMappingProperties {
  /// The availability of mapping property.
  final pulumi.Input<ConnectorMappingAvailability> availability;
  /// The operation after import is done.
  final pulumi.Input<ConnectorMappingCompleteOperation> completeOperation;
  /// The error management setting for the mapping.
  final pulumi.Input<ConnectorMappingErrorManagement> errorManagement;
  /// The file filter for the mapping.
  final pulumi.Input<String>? fileFilter;
  /// The folder path for the mapping.
  final pulumi.Input<String>? folderPath;
  /// The format of mapping property.
  final pulumi.Input<ConnectorMappingFormat> format;
  /// If the file contains a header or not.
  final pulumi.Input<bool>? hasHeader;
  /// Ingestion mapping information at property level.
  final pulumi.Input<List<ConnectorMappingStructure>> structure;

  /// Creates a new [ConnectorMappingProperties].
  /// [availability] The availability of mapping property.
  /// [completeOperation] The operation after import is done.
  /// [errorManagement] The error management setting for the mapping.
  /// [fileFilter] The file filter for the mapping.
  /// [folderPath] The folder path for the mapping.
  /// [format] The format of mapping property.
  /// [hasHeader] If the file contains a header or not.
  /// [structure] Ingestion mapping information at property level.
  ConnectorMappingProperties({
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
      'availability': pulumi.Input.mapInputValue<ConnectorMappingAvailability, Map<String, dynamic>>(availability, (value) => value.toMap()),
      'completeOperation': pulumi.Input.mapInputValue<ConnectorMappingCompleteOperation, Map<String, dynamic>>(completeOperation, (value) => value.toMap()),
      'errorManagement': pulumi.Input.mapInputValue<ConnectorMappingErrorManagement, Map<String, dynamic>>(errorManagement, (value) => value.toMap()),
      'fileFilter': ?fileFilter,
      'folderPath': ?folderPath,
      'format': pulumi.Input.mapInputValue<ConnectorMappingFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'hasHeader': ?hasHeader,
      'structure': pulumi.Input.mapInputValue<List<ConnectorMappingStructure>, List<Map<String, dynamic>>>(structure, (value) => pulumi.Input.encodeList<ConnectorMappingStructure, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectorMappingProperties.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingProperties(
      availability: (ConnectorMappingAvailability.fromMap((map['availability'] as Map).cast<String, dynamic>())).input(),
      completeOperation: (ConnectorMappingCompleteOperation.fromMap((map['completeOperation'] as Map).cast<String, dynamic>())).input(),
      errorManagement: (ConnectorMappingErrorManagement.fromMap((map['errorManagement'] as Map).cast<String, dynamic>())).input(),
      fileFilter: map['fileFilter'] == null ? null : (map['fileFilter']! as String).input(),
      folderPath: map['folderPath'] == null ? null : (map['folderPath']! as String).input(),
      format: (ConnectorMappingFormat.fromMap((map['format'] as Map).cast<String, dynamic>())).input(),
      hasHeader: map['hasHeader'] == null ? null : (map['hasHeader']! as bool).input(),
      structure: (pulumi.Input.decodeList<ConnectorMappingStructure>(map['structure'], (value) => ConnectorMappingStructure.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

