// ignore_for_file: unused_element, unnecessary_cast

import 'api_portal_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApiPortal.
class GetApiPortalResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource Id for the resource.
  final String id;

  /// The name of the resource.
  final String name;

  /// API portal properties payload
  final ApiPortalPropertiesResponse properties;

  /// Sku of the API portal resource
  final SkuResponse? sku;

  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;

  /// The type of the resource.
  final String type;

  /// Creates a new [GetApiPortalResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource.
  /// [name] The name of the resource.
  /// [properties] API portal properties payload
  /// [sku] Sku of the API portal resource
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  GetApiPortalResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    this.sku,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetApiPortalResult.fromMap(Map<String, dynamic> map) {
    return GetApiPortalResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: ApiPortalPropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
