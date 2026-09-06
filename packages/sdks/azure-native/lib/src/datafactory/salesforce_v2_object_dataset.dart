// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// The Salesforce V2 object dataset.
class SalesforceV2ObjectDataset {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// Dataset description.
  final pulumi.Input<String?>? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetFolder?>? folder;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;
  /// The Salesforce V2 object API name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? objectApiName;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecification>?>? parameters;
  /// The Salesforce V2 report Id. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? reportId;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;
  /// Type of dataset.
  /// Expected value is 'SalesforceV2Object'.
  final pulumi.Input<String> type;

  /// Creates a new [SalesforceV2ObjectDataset].
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
  const SalesforceV2ObjectDataset({
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
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'objectApiName': ?objectApiName,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reportId': ?reportId,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory SalesforceV2ObjectDataset.fromMap(Map<String, dynamic> map) {
    return SalesforceV2ObjectDataset(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetFolder.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedServiceName: pulumi.Input.fromValue(LinkedServiceReference.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())),
      objectApiName: (() { final guardedValue = map['objectApiName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      reportId: (() { final guardedValue = map['reportId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      structure: (() { final guardedValue = map['structure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
