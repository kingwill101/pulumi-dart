// ignore_for_file: unused_element, unnecessary_cast

import 'iot_dps_properties_description_response.dart';
import 'iot_dps_sku_info_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIotDpsResource.
class GetIotDpsResourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.
  final String? etag;
  /// The resource identifier.
  final String id;
  /// The managed identities for a provisioning service.
  final ManagedServiceIdentityResponse? identity;
  /// The resource location.
  final String location;
  /// The resource name.
  final String name;
  /// Service specific properties for a provisioning service
  final IotDpsPropertiesDescriptionResponse properties;
  /// The resource group of the resource.
  final String? resourcegroup;
  /// Sku info for a provisioning Service.
  final IotDpsSkuInfoResponse sku;
  /// The subscription id of the resource.
  final String? subscriptionid;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String type;

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
  GetIotDpsResourceResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.properties,
    this.resourcegroup,
    required this.sku,
    this.subscriptionid,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'resourcegroup': ?resourcegroup,
      'sku': sku.toMap(),
      'subscriptionid': ?subscriptionid,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIotDpsResourceResult.fromMap(Map<String, dynamic> map) {
    return GetIotDpsResourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      properties: IotDpsPropertiesDescriptionResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourcegroup: map['resourcegroup'] == null ? null : map['resourcegroup'] as String,
      sku: IotDpsSkuInfoResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      subscriptionid: map['subscriptionid'] == null ? null : map['subscriptionid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

