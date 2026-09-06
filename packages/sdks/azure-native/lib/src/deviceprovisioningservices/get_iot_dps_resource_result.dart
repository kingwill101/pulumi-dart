// ignore_for_file: unused_element, unnecessary_cast

import 'iot_dps_properties_description_response.dart';
import 'iot_dps_sku_info_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIotDpsResource.
class GetIotDpsResourceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.
  final String? etag;
  /// The resource identifier.
  final String? id;
  /// The managed identities for a provisioning service.
  final ManagedServiceIdentityResponse? identity;
  /// The resource location.
  final String? location;
  /// The resource name.
  final String? name;
  /// Service specific properties for a provisioning service
  final IotDpsPropertiesDescriptionResponse? properties;
  /// The resource group of the resource.
  final String? resourcegroup;
  /// Sku info for a provisioning Service.
  final IotDpsSkuInfoResponse? sku;
  /// The subscription id of the resource.
  final String? subscriptionid;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String? type;

  /// Creates a new [GetIotDpsResourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.
  /// [id] The resource identifier.
  /// [identity] The managed identities for a provisioning service.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [properties] Service specific properties for a provisioning service
  /// [resourcegroup] The resource group of the resource.
  /// [sku] Sku info for a provisioning Service.
  /// [subscriptionid] The subscription id of the resource.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] The resource tags.
  /// [type] The resource type.
  const GetIotDpsResourceResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.properties,
    this.resourcegroup,
    this.sku,
    this.subscriptionid,
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
      'resourcegroup': ?resourcegroup,
      'sku': ?sku?.toMap(),
      'subscriptionid': ?subscriptionid,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetIotDpsResourceResult.fromMap(Map<String, dynamic> map) {
    return GetIotDpsResourceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return IotDpsPropertiesDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourcegroup: (() { final guardedValue = map['resourcegroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return IotDpsSkuInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subscriptionid: (() { final guardedValue = map['subscriptionid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
