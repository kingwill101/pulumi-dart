// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// The Salesforce Service Cloud V2 object dataset.
class SalesforceServiceCloudV2ObjectDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;

  /// Dataset description.
  final pulumi.Input<String>? description;

  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetResponseFolder>? folder;

  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;

  /// The Salesforce Service Cloud V2 object API name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? objectApiName;

  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// The Salesforce Service Cloud V2 reportId. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? reportId;

  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;

  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;

  /// Type of dataset.
  /// Expected value is 'SalesforceServiceCloudV2Object'.
  final pulumi.Input<String> type;

  /// Creates a new [SalesforceServiceCloudV2ObjectDatasetResponse].
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
  SalesforceServiceCloudV2ObjectDatasetResponse({
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
      'folder':
          ?pulumi.Input.mapOptionalInputValue<
            DatasetResponseFolder,
            Map<String, dynamic>
          >(folder, (value) => value.toMap()),
      'linkedServiceName':
          pulumi.Input.mapInputValue<
            LinkedServiceReferenceResponse,
            Map<String, dynamic>
          >(linkedServiceName, (value) => value.toMap()),
      'objectApiName': ?objectApiName,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecificationResponse>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'reportId': ?reportId,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory SalesforceServiceCloudV2ObjectDatasetResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SalesforceServiceCloudV2ObjectDatasetResponse(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      folder: (() {
        final guardedValue = map['folder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatasetResponseFolder.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      linkedServiceName: pulumi.Input.fromValue(
        LinkedServiceReferenceResponse.fromMap(
          (map['linkedServiceName']! as Map).cast<String, dynamic>(),
        ),
      ),
      objectApiName: (() {
        final guardedValue = map['objectApiName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(
            guardedValue,
            (value) => ParameterSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      reportId: (() {
        final guardedValue = map['reportId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      schema: (() {
        final guardedValue = map['schema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      structure: (() {
        final guardedValue = map['structure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
