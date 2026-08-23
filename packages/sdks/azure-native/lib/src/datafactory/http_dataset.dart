// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_format.dart';
import 'dataset_compression.dart';
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// A file in an HTTP web server.
class HttpDataset {
  /// The headers for the HTTP Request. e.g. request-header-name-1:request-header-value-1
  /// ...
  /// request-header-name-n:request-header-value-n Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? additionalHeaders;
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The data compression method used on files.
  final pulumi.Input<DatasetCompression>? compression;
  /// Dataset description.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetFolder>? folder;
  /// The format of files.
  final pulumi.Input<AvroFormat>? format;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The relative URL based on the URL in the HttpLinkedService refers to an HTTP file Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? relativeUrl;
  /// The body for the HTTP request. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? requestBody;
  /// The HTTP method for the HTTP request. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? requestMethod;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;
  /// Type of dataset.
  /// Expected value is 'HttpFile'.
  final pulumi.Input<String> type;

  /// Creates a new [HttpDataset].
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
  const HttpDataset({
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
      'compression': ?pulumi.Input.mapOptionalInputValue<DatasetCompression, Map<String, dynamic>>(compression, (value) => value.toMap()),
      'description': ?description,
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'format': ?pulumi.Input.mapOptionalInputValue<AvroFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relativeUrl': ?relativeUrl,
      'requestBody': ?requestBody,
      'requestMethod': ?requestMethod,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory HttpDataset.fromMap(Map<String, dynamic> map) {
    return HttpDataset(
      additionalHeaders: (() { final guardedValue = map['additionalHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetCompression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetFolder.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvroFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedServiceName: pulumi.Input.fromValue(LinkedServiceReference.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      relativeUrl: (() { final guardedValue = map['relativeUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      requestBody: (() { final guardedValue = map['requestBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      requestMethod: (() { final guardedValue = map['requestMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      structure: (() { final guardedValue = map['structure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
