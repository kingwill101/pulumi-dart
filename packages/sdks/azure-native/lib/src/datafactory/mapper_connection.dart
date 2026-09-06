// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference.dart';
import 'mapper_dsl_connector_properties.dart';

/// Source connection details.
class MapperConnection {
  /// List of name/value pairs for connection properties.
  final pulumi.Input<List<MapperDslConnectorProperties>?>? commonDslConnectorProperties;
  /// A boolean indicating whether linked service is of type inline dataset. Currently only inline datasets are supported.
  final pulumi.Input<bool?>? isInlineDataset;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference?>? linkedService;
  /// Type of the linked service e.g.: AzureBlobFS.
  final pulumi.Input<String?>? linkedServiceType;
  /// Type of connection via linked service or dataset.
  final pulumi.Input<dynamic> type;

  /// Creates a new [MapperConnection].
  /// [commonDslConnectorProperties] List of name/value pairs for connection properties.
  /// [isInlineDataset] A boolean indicating whether linked service is of type inline dataset. Currently only inline datasets are supported.
  /// [linkedService] Linked service reference.
  /// [linkedServiceType] Type of the linked service e.g.: AzureBlobFS.
  /// [type] Type of connection via linked service or dataset.
  const MapperConnection({
    this.commonDslConnectorProperties,
    this.isInlineDataset,
    this.linkedService,
    this.linkedServiceType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonDslConnectorProperties': ?pulumi.Input.mapOptionalInputValue<List<MapperDslConnectorProperties>, List<Map<String, dynamic>>>(commonDslConnectorProperties, (value) => pulumi.Input.encodeList<MapperDslConnectorProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isInlineDataset': ?isInlineDataset,
      'linkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'linkedServiceType': ?linkedServiceType,
      'type': type,
    };
  }

  factory MapperConnection.fromMap(Map<String, dynamic> map) {
    return MapperConnection(
      commonDslConnectorProperties: (() { final guardedValue = map['commonDslConnectorProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MapperDslConnectorProperties>(guardedValue, (value) => MapperDslConnectorProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isInlineDataset: (() { final guardedValue = map['isInlineDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      linkedService: (() { final guardedValue = map['linkedService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedServiceType: (() { final guardedValue = map['linkedServiceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type']),
    );
  }
}
