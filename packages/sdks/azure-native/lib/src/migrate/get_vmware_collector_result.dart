// ignore_for_file: unused_element, unnecessary_cast

import 'collector_properties_response.dart';

/// Result data returned by getVMwareCollector.
class GetVMwareCollectorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  final String? eTag;
  final String? id;
  final String? name;
  final CollectorPropertiesResponse? properties;
  final String? type;

  /// Creates a new [GetVMwareCollectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] Optional.
  /// [id] Optional.
  /// [name] Optional.
  /// [properties] Optional.
  /// [type] Optional.
  const GetVMwareCollectorResult({
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

  factory GetVMwareCollectorResult.fromMap(Map<String, dynamic> map) {
    return GetVMwareCollectorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return CollectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
