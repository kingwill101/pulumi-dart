// ignore_for_file: unused_element, unnecessary_cast

import 'app_resource_properties_response.dart';
import 'managed_identity_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApp.
class GetAppResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource Id for the resource.
  final String id;

  /// The Managed Identity type of the app resource
  final ManagedIdentityPropertiesResponse? identity;

  /// The GEO location of the application, always the same with its parent resource
  final String? location;

  /// The name of the resource.
  final String name;

  /// Properties of the App resource
  final AppResourcePropertiesResponse properties;

  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;

  /// The type of the resource.
  final String type;

  /// Creates a new [GetAppResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource.
  /// [identity] The Managed Identity type of the app resource
  /// [location] The GEO location of the application, always the same with its parent resource
  /// [name] The name of the resource.
  /// [properties] Properties of the App resource
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  GetAppResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetAppResult.fromMap(Map<String, dynamic> map) {
    return GetAppResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return ManagedIdentityPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      properties: AppResourcePropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
