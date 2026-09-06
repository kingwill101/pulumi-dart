// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_folder_response.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// The dataset points to a HTML table in the web page.
class WebTableDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// Dataset description.
  final pulumi.Input<String?>? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetFolderResponse?>? folder;
  /// The zero-based index of the table in the web page. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic> index;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// The relative URL to the web page from the linked service URL. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? path;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;
  /// Type of dataset.
  /// Expected value is 'WebTable'.
  final pulumi.Input<String> type;

  /// Creates a new [WebTableDatasetResponse].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [index] The zero-based index of the table in the web page. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [linkedServiceName] Linked service reference.
  /// [parameters] Parameters for dataset.
  /// [path] The relative URL to the web page from the linked service URL. Type: string (or Expression with resultType string).
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  const WebTableDatasetResponse({
    this.annotations,
    this.description,
    this.folder,
    required this.index,
    required this.linkedServiceName,
    this.parameters,
    this.path,
    this.schema,
    this.structure,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetFolderResponse, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'index': index,
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': ?path,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory WebTableDatasetResponse.fromMap(Map<String, dynamic> map) {
    return WebTableDatasetResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetFolderResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      index: pulumi.Input.fromValue(map['index']),
      linkedServiceName: pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      structure: (() { final guardedValue = map['structure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
