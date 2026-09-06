// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// The path of the SAP Cloud for Customer OData entity.
class SapCloudForCustomerResourceDataset {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// Dataset description.
  final pulumi.Input<String?>? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetFolder?>? folder;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecification>?>? parameters;
  /// The path of the SAP Cloud for Customer OData entity. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> path;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;
  /// Type of dataset.
  /// Expected value is 'SapCloudForCustomerResource'.
  final pulumi.Input<String> type;

  /// Creates a new [SapCloudForCustomerResourceDataset].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [parameters] Parameters for dataset.
  /// [path] The path of the SAP Cloud for Customer OData entity. Type: string (or Expression with resultType string).
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  const SapCloudForCustomerResourceDataset({
    this.annotations,
    this.description,
    this.folder,
    required this.linkedServiceName,
    this.parameters,
    required this.path,
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
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': path,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory SapCloudForCustomerResourceDataset.fromMap(Map<String, dynamic> map) {
    return SapCloudForCustomerResourceDataset(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetFolder.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedServiceName: pulumi.Input.fromValue(LinkedServiceReference.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      path: pulumi.Input.fromValue(map['path']),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      structure: (() { final guardedValue = map['structure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
