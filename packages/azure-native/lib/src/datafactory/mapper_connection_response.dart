// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference_response.dart';
import 'mapper_dsl_connector_properties_response.dart';

/// Source connection details.
class MapperConnectionResponse {
  /// List of name/value pairs for connection properties.
  final List<MapperDslConnectorPropertiesResponse>? commonDslConnectorProperties;
  /// A boolean indicating whether linked service is of type inline dataset. Currently only inline datasets are supported.
  final bool? isInlineDataset;
  /// Linked service reference.
  final LinkedServiceReferenceResponse? linkedService;
  /// Type of the linked service e.g.: AzureBlobFS.
  final String? linkedServiceType;
  /// Type of connection via linked service or dataset.
  final String type;

  /// Creates a new [MapperConnectionResponse].
  /// [commonDslConnectorProperties] List of name/value pairs for connection properties.
  /// [isInlineDataset] A boolean indicating whether linked service is of type inline dataset. Currently only inline datasets are supported.
  /// [linkedService] Linked service reference.
  /// [linkedServiceType] Type of the linked service e.g.: AzureBlobFS.
  /// [type] Type of connection via linked service or dataset.
  MapperConnectionResponse({
    this.commonDslConnectorProperties,
    this.isInlineDataset,
    this.linkedService,
    this.linkedServiceType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonDslConnectorProperties': ?commonDslConnectorProperties == null ? null : pulumi.Input.encodeList<MapperDslConnectorPropertiesResponse, Map<String, dynamic>>(commonDslConnectorProperties!, (value) => value.toMap()),
      'isInlineDataset': ?isInlineDataset,
      'linkedService': ?linkedService == null ? null : linkedService!.toMap(),
      'linkedServiceType': ?linkedServiceType,
      'type': type,
    };
  }

  factory MapperConnectionResponse.fromMap(Map<String, dynamic> map) {
    return MapperConnectionResponse(
      commonDslConnectorProperties: map['commonDslConnectorProperties'] == null ? null : pulumi.Input.decodeList<MapperDslConnectorPropertiesResponse>(map['commonDslConnectorProperties'], (value) => MapperDslConnectorPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      isInlineDataset: map['isInlineDataset'] == null ? null : map['isInlineDataset'] as bool,
      linkedService: map['linkedService'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
      linkedServiceType: map['linkedServiceType'] == null ? null : map['linkedServiceType'] as String,
      type: map['type'] as String,
    );
  }
}

