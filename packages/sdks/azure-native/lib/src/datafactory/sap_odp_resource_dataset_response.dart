// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// SAP ODP Resource properties.
class SapOdpResourceDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// The context of the SAP ODP Object. Type: string (or Expression with resultType string).
  final dynamic context;
  /// Dataset description.
  final String? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetResponseFolder? folder;
  /// Linked service reference.
  final LinkedServiceReferenceResponse linkedServiceName;
  /// The name of the SAP ODP Object. Type: string (or Expression with resultType string).
  final dynamic objectName;
  /// Parameters for dataset.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// Type of dataset.
  /// Expected value is 'SapOdpResource'.
  final String type;

  /// Creates a new [SapOdpResourceDatasetResponse].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [context] The context of the SAP ODP Object. Type: string (or Expression with resultType string).
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [objectName] The name of the SAP ODP Object. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for dataset.
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  SapOdpResourceDatasetResponse({
    this.annotations,
    required this.context,
    this.description,
    this.folder,
    required this.linkedServiceName,
    required this.objectName,
    this.parameters,
    this.schema,
    this.structure,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'context': context,
      'description': ?description,
      'folder': ?folder == null ? null : folder!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'objectName': objectName,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory SapOdpResourceDatasetResponse.fromMap(Map<String, dynamic> map) {
    return SapOdpResourceDatasetResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      context: map['context'],
      description: map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] == null ? null : DatasetResponseFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      objectName: map['objectName'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] == null ? null : map['schema'],
      structure: map['structure'] == null ? null : map['structure'],
      type: map['type'] as String,
    );
  }
}

