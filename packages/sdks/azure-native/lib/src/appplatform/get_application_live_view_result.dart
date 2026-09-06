// ignore_for_file: unused_element, unnecessary_cast

import 'application_live_view_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApplicationLiveView.
class GetApplicationLiveViewResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource Id for the resource.
  final String? id;
  /// The name of the resource.
  final String? name;
  /// Application Live View properties payload
  final ApplicationLiveViewPropertiesResponse? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetApplicationLiveViewResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource.
  /// [name] The name of the resource.
  /// [properties] Application Live View properties payload
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  const GetApplicationLiveViewResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetApplicationLiveViewResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationLiveViewResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ApplicationLiveViewPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
