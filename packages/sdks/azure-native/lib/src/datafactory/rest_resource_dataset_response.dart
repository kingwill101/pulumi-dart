// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// A Rest service dataset.
class RestResourceDatasetResponse {
  /// The additional HTTP headers in the request to the RESTful API.
  final Map<String, dynamic>? additionalHeaders;
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// Dataset description.
  final String? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetResponseFolder? folder;
  /// Linked service reference.
  final LinkedServiceReferenceResponse linkedServiceName;
  /// The pagination rules to compose next page requests.
  final Map<String, dynamic>? paginationRules;
  /// Parameters for dataset.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The relative URL to the resource that the RESTful API provides. Type: string (or Expression with resultType string).
  final dynamic relativeUrl;
  /// The HTTP request body to the RESTful API if requestMethod is POST. Type: string (or Expression with resultType string).
  final dynamic requestBody;
  /// The HTTP method used to call the RESTful API. The default is GET. Type: string (or Expression with resultType string).
  final dynamic requestMethod;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// Type of dataset.
  /// Expected value is 'RestResource'.
  final String type;

  /// Creates a new [RestResourceDatasetResponse].
  /// [additionalHeaders] The additional HTTP headers in the request to the RESTful API.
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [paginationRules] The pagination rules to compose next page requests.
  /// [parameters] Parameters for dataset.
  /// [relativeUrl] The relative URL to the resource that the RESTful API provides. Type: string (or Expression with resultType string).
  /// [requestBody] The HTTP request body to the RESTful API if requestMethod is POST. Type: string (or Expression with resultType string).
  /// [requestMethod] The HTTP method used to call the RESTful API. The default is GET. Type: string (or Expression with resultType string).
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  RestResourceDatasetResponse({
    this.additionalHeaders,
    this.annotations,
    this.description,
    this.folder,
    required this.linkedServiceName,
    this.paginationRules,
    this.parameters,
    this.relativeUrl,
    this.requestBody,
    this.requestMethod,
    this.schema,
    this.structure,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalHeaders': ?additionalHeaders,
      'annotations': ?annotations,
      'description': ?description,
      'folder': ?folder == null ? null : folder!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'paginationRules': ?paginationRules,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'relativeUrl': ?relativeUrl,
      'requestBody': ?requestBody,
      'requestMethod': ?requestMethod,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory RestResourceDatasetResponse.fromMap(Map<String, dynamic> map) {
    return RestResourceDatasetResponse(
      additionalHeaders: map['additionalHeaders'] == null ? null : (map['additionalHeaders'] as Map).cast<String, dynamic>(),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] == null ? null : DatasetResponseFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      paginationRules: map['paginationRules'] == null ? null : (map['paginationRules'] as Map).cast<String, dynamic>(),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      relativeUrl: map['relativeUrl'] == null ? null : map['relativeUrl'],
      requestBody: map['requestBody'] == null ? null : map['requestBody'],
      requestMethod: map['requestMethod'] == null ? null : map['requestMethod'],
      schema: map['schema'] == null ? null : map['schema'],
      structure: map['structure'] == null ? null : map['structure'],
      type: map['type'] as String,
    );
  }
}

