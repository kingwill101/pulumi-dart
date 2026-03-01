// ignore_for_file: unused_element, unnecessary_cast

import 'arm_identity_response.dart';
import 'iot_hub_properties_response.dart';
import 'iot_hub_sku_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIotHubResource.
class GetIotHubResourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.
  final String? etag;
  /// The resource identifier.
  final String id;
  /// The managed identities for the IotHub.
  final ArmIdentityResponse? identity;
  /// The resource location.
  final String location;
  /// The resource name.
  final String name;
  /// IotHub properties
  final IotHubPropertiesResponse properties;
  /// IotHub SKU info
  final IotHubSkuInfoResponse sku;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String type;

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
  GetIotHubResourceResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.properties,
    required this.sku,
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
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIotHubResourceResult.fromMap(Map<String, dynamic> map) {
    return GetIotHubResourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ArmIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      properties: IotHubPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      sku: IotHubSkuInfoResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

