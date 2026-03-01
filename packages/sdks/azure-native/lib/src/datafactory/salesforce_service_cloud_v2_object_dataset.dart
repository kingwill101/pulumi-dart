// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// The Salesforce Service Cloud V2 object dataset.
class SalesforceServiceCloudV2ObjectDataset {
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// Dataset description.
  final String? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetFolder? folder;
  /// Linked service reference.
  final LinkedServiceReference linkedServiceName;
  /// The Salesforce Service Cloud V2 object API name. Type: string (or Expression with resultType string).
  final dynamic objectApiName;
  /// Parameters for dataset.
  final Map<String, ParameterSpecification>? parameters;
  /// The Salesforce Service Cloud V2 reportId. Type: string (or Expression with resultType string).
  final dynamic reportId;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// Type of dataset.
  /// Expected value is 'SalesforceServiceCloudV2Object'.
  final String type;

  /// Creates a new [SalesforceServiceCloudV2ObjectDataset].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [objectApiName] The Salesforce Service Cloud V2 object API name. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for dataset.
  /// [reportId] The Salesforce Service Cloud V2 reportId. Type: string (or Expression with resultType string).
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  SalesforceServiceCloudV2ObjectDataset({
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
      'folder': ?folder == null ? null : folder!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'objectApiName': ?objectApiName,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'reportId': ?reportId,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory SalesforceServiceCloudV2ObjectDataset.fromMap(Map<String, dynamic> map) {
    return SalesforceServiceCloudV2ObjectDataset(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] == null ? null : DatasetFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      objectApiName: map['objectApiName'] == null ? null : map['objectApiName'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      reportId: map['reportId'] == null ? null : map['reportId'],
      schema: map['schema'] == null ? null : map['schema'],
      structure: map['structure'] == null ? null : map['structure'],
      type: map['type'] as String,
    );
  }
}

