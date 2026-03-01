// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_format_response.dart';
import 'dataset_compression_response.dart';
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// A file in an HTTP web server.
class HttpDatasetResponse {
  /// The headers for the HTTP Request. e.g. request-header-name-1:request-header-value-1
  /// ...
  /// request-header-name-n:request-header-value-n Type: string (or Expression with resultType string).
  final dynamic additionalHeaders;
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// The data compression method used on files.
  final DatasetCompressionResponse? compression;
  /// Dataset description.
  final String? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetResponseFolder? folder;
  /// The format of files.
  final AvroFormatResponse? format;
  /// Linked service reference.
  final LinkedServiceReferenceResponse linkedServiceName;
  /// Parameters for dataset.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The relative URL based on the URL in the HttpLinkedService refers to an HTTP file Type: string (or Expression with resultType string).
  final dynamic relativeUrl;
  /// The body for the HTTP request. Type: string (or Expression with resultType string).
  final dynamic requestBody;
  /// The HTTP method for the HTTP request. Type: string (or Expression with resultType string).
  final dynamic requestMethod;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// Type of dataset.
  /// Expected value is 'HttpFile'.
  final String type;

  /// Creates a new [HttpDatasetResponse].
  /// [additionalHeaders] The headers for the HTTP Request. e.g. request-header-name-1:request-header-value-1
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [compression] The data compression method used on files.
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [format] The format of files.
  /// [linkedServiceName] Linked service reference.
  /// [parameters] Parameters for dataset.
  /// [relativeUrl] The relative URL based on the URL in the HttpLinkedService refers to an HTTP file Type: string (or Expression with resultType string).
  /// [requestBody] The body for the HTTP request. Type: string (or Expression with resultType string).
  /// [requestMethod] The HTTP method for the HTTP request. Type: string (or Expression with resultType string).
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  HttpDatasetResponse({
    this.additionalHeaders,
    this.annotations,
    this.compression,
    this.description,
    this.folder,
    this.format,
    required this.linkedServiceName,
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
      'compression': ?compression == null ? null : compression!.toMap(),
      'description': ?description,
      'folder': ?folder == null ? null : folder!.toMap(),
      'format': ?format == null ? null : format!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'relativeUrl': ?relativeUrl,
      'requestBody': ?requestBody,
      'requestMethod': ?requestMethod,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory HttpDatasetResponse.fromMap(Map<String, dynamic> map) {
    return HttpDatasetResponse(
      additionalHeaders: map['additionalHeaders'] == null ? null : map['additionalHeaders'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      compression: map['compression'] == null ? null : DatasetCompressionResponse.fromMap((map['compression'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] == null ? null : DatasetResponseFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      format: map['format'] == null ? null : AvroFormatResponse.fromMap((map['format'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
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

