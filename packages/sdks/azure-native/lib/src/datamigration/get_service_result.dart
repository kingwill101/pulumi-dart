// ignore_for_file: unused_element, unnecessary_cast

import 'service_sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// The time delay before the service is auto-stopped when idle.
  final String? autoStopDelay;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Whether service resources should be deleted when stopped. (Turned on by default)
  final bool? deleteResourcesOnStop;
  /// HTTP strong entity tag value. Ignored if submitted
  final String? etag;
  final String id;
  /// The resource kind. Only 'vm' (the default) is supported.
  final String? kind;
  final String? location;
  final String name;
  /// The resource's provisioning state
  final String provisioningState;
  /// The public key of the service, used to encrypt secrets sent to the service
  final String? publicKey;
  /// Service SKU
  final ServiceSkuResponse? sku;
  final SystemDataResponse systemData;
  final Map<String, String>? tags;
  final String type;
  /// The ID of the Microsoft.Network/networkInterfaces resource which the service have
  final String? virtualNicId;
  /// The ID of the Microsoft.Network/virtualNetworks/subnets resource to which the service should be joined
  final String? virtualSubnetId;

  /// Creates a new [GetServiceResult].
  /// [autoStopDelay] The time delay before the service is auto-stopped when idle.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deleteResourcesOnStop] Whether service resources should be deleted when stopped. (Turned on by default)
  /// [etag] HTTP strong entity tag value. Ignored if submitted
  /// [id] Required.
  /// [kind] The resource kind. Only 'vm' (the default) is supported.
  /// [location] Optional.
  /// [name] Required.
  /// [provisioningState] The resource's provisioning state
  /// [publicKey] The public key of the service, used to encrypt secrets sent to the service
  /// [sku] Service SKU
  /// [systemData] Required.
  /// [tags] Optional.
  /// [type] Required.
  /// [virtualNicId] The ID of the Microsoft.Network/networkInterfaces resource which the service have
  /// [virtualSubnetId] The ID of the Microsoft.Network/virtualNetworks/subnets resource to which the service should be joined
  GetServiceResult({
    this.autoStopDelay,
    required this.azureApiVersion,
    this.deleteResourcesOnStop,
    this.etag,
    required this.id,
    this.kind,
    this.location,
    required this.name,
    required this.provisioningState,
    this.publicKey,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
    this.virtualNicId,
    this.virtualSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoStopDelay': ?autoStopDelay,
      'azureApiVersion': azureApiVersion,
      'deleteResourcesOnStop': ?deleteResourcesOnStop,
      'etag': ?etag,
      'id': id,
      'kind': ?kind,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'publicKey': ?publicKey,
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualNicId': ?virtualNicId,
      'virtualSubnetId': ?virtualSubnetId,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      autoStopDelay: map['autoStopDelay'] == null ? null : map['autoStopDelay']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      deleteResourcesOnStop: map['deleteResourcesOnStop'] == null ? null : map['deleteResourcesOnStop']! as bool,
      etag: map['etag'] == null ? null : map['etag']! as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publicKey: map['publicKey'] == null ? null : map['publicKey']! as String,
      sku: map['sku'] == null ? null : ServiceSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualNicId: map['virtualNicId'] == null ? null : map['virtualNicId']! as String,
      virtualSubnetId: map['virtualSubnetId'] == null ? null : map['virtualSubnetId']! as String,
    );
  }
}

