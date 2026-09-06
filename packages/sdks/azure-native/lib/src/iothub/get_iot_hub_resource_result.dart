// ignore_for_file: unused_element, unnecessary_cast

import 'arm_identity_response.dart';
import 'iot_hub_properties_response.dart';
import 'iot_hub_sku_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIotHubResource.
class GetIotHubResourceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.
  final String? etag;
  /// The resource identifier.
  final String? id;
  /// The managed identities for the IotHub.
  final ArmIdentityResponse? identity;
  /// The resource location.
  final String? location;
  /// The resource name.
  final String? name;
  /// IotHub properties
  final IotHubPropertiesResponse? properties;
  /// IotHub SKU info
  final IotHubSkuInfoResponse? sku;
  /// The system meta data relating to this resource.
  final SystemDataResponse? systemData;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String? type;

  /// Creates a new [GetIotHubResourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.
  /// [id] The resource identifier.
  /// [identity] The managed identities for the IotHub.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [properties] IotHub properties
  /// [sku] IotHub SKU info
  /// [systemData] The system meta data relating to this resource.
  /// [tags] The resource tags.
  /// [type] The resource type.
  const GetIotHubResourceResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.properties,
    this.sku,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetIotHubResourceResult.fromMap(Map<String, dynamic> map) {
    return GetIotHubResourceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ArmIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return IotHubPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return IotHubSkuInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
