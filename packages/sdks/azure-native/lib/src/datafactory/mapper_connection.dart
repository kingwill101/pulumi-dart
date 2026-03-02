// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference.dart';
import 'mapper_dsl_connector_properties.dart';

/// Source connection details.
class MapperConnection {
  /// List of name/value pairs for connection properties.
  final pulumi.Input<List<MapperDslConnectorProperties>>? commonDslConnectorProperties;
  /// A boolean indicating whether linked service is of type inline dataset. Currently only inline datasets are supported.
  final pulumi.Input<bool>? isInlineDataset;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedService;
  /// Type of the linked service e.g.: AzureBlobFS.
  final pulumi.Input<String>? linkedServiceType;
  /// Type of connection via linked service or dataset.
  final pulumi.Input<String> type;

  /// Creates a new [MapperConnection].
  /// [commonDslConnectorProperties] List of name/value pairs for connection properties.
  /// [isInlineDataset] A boolean indicating whether linked service is of type inline dataset. Currently only inline datasets are supported.
  /// [linkedService] Linked service reference.
  /// [linkedServiceType] Type of the linked service e.g.: AzureBlobFS.
  /// [type] Type of connection via linked service or dataset.
  MapperConnection({
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
      commonDslConnectorProperties: map['commonDslConnectorProperties'] == null ? null : (pulumi.Input.decodeList<MapperDslConnectorProperties>(map['commonDslConnectorProperties']!, (value) => MapperDslConnectorProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isInlineDataset: map['isInlineDataset'] == null ? null : (map['isInlineDataset']! as bool).input(),
      linkedService: map['linkedService'] == null ? null : (LinkedServiceReference.fromMap((map['linkedService']! as Map).cast<String, dynamic>())).input(),
      linkedServiceType: map['linkedServiceType'] == null ? null : (map['linkedServiceType']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

