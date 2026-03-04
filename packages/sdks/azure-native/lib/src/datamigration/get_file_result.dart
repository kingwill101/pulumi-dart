// ignore_for_file: unused_element, unnecessary_cast

import 'project_file_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFile.
class GetFileResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// HTTP strong entity tag value. This is ignored if submitted.
  final String? etag;

  /// Resource ID.
  final String id;

  /// Resource name.
  final String name;

  /// Custom file properties
  final ProjectFilePropertiesResponse properties;

  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;

  /// Resource type.
  final String type;

  /// Creates a new [GetFileResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] HTTP strong entity tag value. This is ignored if submitted.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [properties] Custom file properties
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Resource type.
  GetFileResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetFileResult.fromMap(Map<String, dynamic> map) {
    return GetFileResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      properties: ProjectFilePropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
