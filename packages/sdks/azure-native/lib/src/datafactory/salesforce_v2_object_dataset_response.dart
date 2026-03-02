// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// The Salesforce V2 object dataset.
class SalesforceV2ObjectDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Dataset description.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetResponseFolder>? folder;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;
  /// The Salesforce V2 object API name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? objectApiName;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The Salesforce V2 report Id. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? reportId;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;
  /// Type of dataset.
  /// Expected value is 'SalesforceV2Object'.
  final pulumi.Input<String> type;

  /// Creates a new [SalesforceV2ObjectDatasetResponse].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [objectApiName] The Salesforce V2 object API name. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for dataset.
  /// [reportId] The Salesforce V2 report Id. Type: string (or Expression with resultType string).
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  SalesforceV2ObjectDatasetResponse({
    this.annotations,
    this.description,
    this.folder,
    required this.linkedServiceName,
    this.objectApiName,
    this.parameters,
    this.reportId,
    this.schema,
    this.structure,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetResponseFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'objectApiName': ?objectApiName,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reportId': ?reportId,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory SalesforceV2ObjectDatasetResponse.fromMap(Map<String, dynamic> map) {
    return SalesforceV2ObjectDatasetResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      folder: map['folder'] == null ? null : (DatasetResponseFolder.fromMap((map['folder']! as Map).cast<String, dynamic>())).input(),
      linkedServiceName: (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      objectApiName: map['objectApiName'] == null ? null : (map['objectApiName']!).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      reportId: map['reportId'] == null ? null : (map['reportId']!).input(),
      schema: map['schema'] == null ? null : (map['schema']!).input(),
      structure: map['structure'] == null ? null : (map['structure']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

