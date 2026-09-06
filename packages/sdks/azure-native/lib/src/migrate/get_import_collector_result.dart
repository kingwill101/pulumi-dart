// ignore_for_file: unused_element, unnecessary_cast

import 'import_collector_properties_response.dart';

/// Result data returned by getImportCollector.
class GetImportCollectorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  final String? eTag;
  final String? id;
  final String? name;
  final ImportCollectorPropertiesResponse? properties;
  final String? type;

  /// Creates a new [GetImportCollectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] Optional.
  /// [id] Optional.
  /// [name] Optional.
  /// [properties] Optional.
  /// [type] Optional.
  const GetImportCollectorResult({
    this.azureApiVersion,
    this.eTag,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'eTag': ?eTag,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetImportCollectorResult.fromMap(Map<String, dynamic> map) {
    return GetImportCollectorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ImportCollectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
