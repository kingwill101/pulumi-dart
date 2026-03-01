// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// Sap Business Warehouse Open Hub Destination Table properties.
class SapOpenHubTableDataset {
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// The ID of request for delta loading. Once it is set, only data with requestId larger than the value of this property will be retrieved. The default value is 0. Type: integer (or Expression with resultType integer ).
  final dynamic baseRequestId;
  /// Dataset description.
  final String? description;
  /// Whether to exclude the records of the last request. The default value is true. Type: boolean (or Expression with resultType boolean).
  final dynamic excludeLastRequest;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetFolder? folder;
  /// Linked service reference.
  final LinkedServiceReference linkedServiceName;
  /// The name of the Open Hub Destination with destination type as Database Table. Type: string (or Expression with resultType string).
  final dynamic openHubDestinationName;
  /// Parameters for dataset.
  final Map<String, ParameterSpecification>? parameters;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// Type of dataset.
  /// Expected value is 'SapOpenHubTable'.
  final String type;

  /// Creates a new [SapOpenHubTableDataset].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [baseRequestId] The ID of request for delta loading. Once it is set, only data with requestId larger than the value of this property will be retrieved. The default value is 0. Type: integer (or Expression with resultType integer ).
  /// [description] Dataset description.
  /// [excludeLastRequest] Whether to exclude the records of the last request. The default value is true. Type: boolean (or Expression with resultType boolean).
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [openHubDestinationName] The name of the Open Hub Destination with destination type as Database Table. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for dataset.
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  SapOpenHubTableDataset({
    this.annotations,
    this.baseRequestId,
    this.description,
    this.excludeLastRequest,
    this.folder,
    required this.linkedServiceName,
    required this.openHubDestinationName,
    this.parameters,
    this.schema,
    this.structure,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'baseRequestId': ?baseRequestId,
      'description': ?description,
      'excludeLastRequest': ?excludeLastRequest,
      'folder': ?folder == null ? null : folder!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'openHubDestinationName': openHubDestinationName,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory SapOpenHubTableDataset.fromMap(Map<String, dynamic> map) {
    return SapOpenHubTableDataset(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      baseRequestId: map['baseRequestId'] == null ? null : map['baseRequestId'],
      description: map['description'] == null ? null : map['description'] as String,
      excludeLastRequest: map['excludeLastRequest'] == null ? null : map['excludeLastRequest'],
      folder: map['folder'] == null ? null : DatasetFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      openHubDestinationName: map['openHubDestinationName'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] == null ? null : map['schema'],
      structure: map['structure'] == null ? null : map['structure'],
      type: map['type'] as String,
    );
  }
}

