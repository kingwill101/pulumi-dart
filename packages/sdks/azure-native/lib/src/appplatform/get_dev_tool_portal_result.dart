// ignore_for_file: unused_element, unnecessary_cast

import 'dev_tool_portal_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDevToolPortal.
class GetDevToolPortalResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource Id for the resource.
  final String id;

  /// The name of the resource.
  final String name;

  /// Dev Tool Portal properties payload
  final DevToolPortalPropertiesResponse properties;

  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;

  /// The type of the resource.
  final String type;

  /// Creates a new [GetDevToolPortalResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource.
  /// [name] The name of the resource.
  /// [properties] Dev Tool Portal properties payload
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  GetDevToolPortalResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDevToolPortalResult.fromMap(Map<String, dynamic> map) {
    return GetDevToolPortalResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: DevToolPortalPropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
