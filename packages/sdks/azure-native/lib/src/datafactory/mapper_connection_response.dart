// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference_response.dart';
import 'mapper_dsl_connector_properties_response.dart';

/// Source connection details.
class MapperConnectionResponse {
  /// List of name/value pairs for connection properties.
  final pulumi.Input<List<MapperDslConnectorPropertiesResponse>>? commonDslConnectorProperties;
  /// A boolean indicating whether linked service is of type inline dataset. Currently only inline datasets are supported.
  final pulumi.Input<bool>? isInlineDataset;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedService;
  /// Type of the linked service e.g.: AzureBlobFS.
  final pulumi.Input<String>? linkedServiceType;
  /// Type of connection via linked service or dataset.
  final pulumi.Input<String> type;

  /// Creates a new [MapperConnectionResponse].
  /// [commonDslConnectorProperties] List of name/value pairs for connection properties.
  /// [isInlineDataset] A boolean indicating whether linked service is of type inline dataset. Currently only inline datasets are supported.
  /// [linkedService] Linked service reference.
  /// [linkedServiceType] Type of the linked service e.g.: AzureBlobFS.
  /// [type] Type of connection via linked service or dataset.
  const MapperConnectionResponse({
    this.commonDslConnectorProperties,
    this.isInlineDataset,
    this.linkedService,
    this.linkedServiceType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonDslConnectorProperties': ?pulumi.Input.mapOptionalInputValue<List<MapperDslConnectorPropertiesResponse>, List<Map<String, dynamic>>>(commonDslConnectorProperties, (value) => pulumi.Input.encodeList<MapperDslConnectorPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isInlineDataset': ?isInlineDataset,
      'linkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'linkedServiceType': ?linkedServiceType,
      'type': type,
    };
  }

  factory MapperConnectionResponse.fromMap(Map<String, dynamic> map) {
    return MapperConnectionResponse(
      commonDslConnectorProperties: (() { final guardedValue = map['commonDslConnectorProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MapperDslConnectorPropertiesResponse>(guardedValue, (value) => MapperDslConnectorPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isInlineDataset: (() { final guardedValue = map['isInlineDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      linkedService: (() { final guardedValue = map['linkedService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedServiceType: (() { final guardedValue = map['linkedServiceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
