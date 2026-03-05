// ignore_for_file: unused_element, unnecessary_cast

import 'collector_properties_response.dart';

/// Result data returned by getHyperVCollector.
class GetHyperVCollectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String? eTag;
  final String id;
  final String name;
  final CollectorPropertiesResponse properties;
  final String type;

  /// Creates a new [GetHyperVCollectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] Optional.
  /// [id] Required.
  /// [name] Required.
  /// [properties] Required.
  /// [type] Required.
  GetHyperVCollectorResult({
    required this.azureApiVersion,
    this.eTag,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': ?eTag,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetHyperVCollectorResult.fromMap(Map<String, dynamic> map) {
    return GetHyperVCollectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      properties: CollectorPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

