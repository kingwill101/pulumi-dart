// ignore_for_file: unused_element, unnecessary_cast

import 'discovered_messaging_endpoints_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNamespaceDiscoveredDevice.
class GetNamespaceDiscoveredDeviceResult {
  /// A set of key-value pairs that contain custom attributes.
  final dynamic attributes;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Identifier used to detect changes in the discovered device.
  final String discoveryId;
  /// Endpoints for discovered devices.
  final DiscoveredMessagingEndpointsResponse? endpoints;
  /// The extended location.
  final ExtendedLocationResponse extendedLocation;
  /// A device ID that represents the device in a system external to Azure. Unique within scope of an Azure tenant.
  final String? externalDeviceId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Device manufacturer.
  final String? manufacturer;
  /// Device model.
  final String? model;
  /// The name of the resource
  final String name;
  /// Device operating system name.
  final String? operatingSystem;
  /// Device operating system version.
  final String? operatingSystemVersion;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// An integer that is incremented each time the resource is modified.
  final double version;

  /// Creates a new [GetNamespaceDiscoveredDeviceResult].
  /// [attributes] A set of key-value pairs that contain custom attributes.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [discoveryId] Identifier used to detect changes in the discovered device.
  /// [endpoints] Endpoints for discovered devices.
  /// [extendedLocation] The extended location.
  /// [externalDeviceId] A device ID that represents the device in a system external to Azure. Unique within scope of an Azure tenant.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [manufacturer] Device manufacturer.
  /// [model] Device model.
  /// [name] The name of the resource
  /// [operatingSystem] Device operating system name.
  /// [operatingSystemVersion] Device operating system version.
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] An integer that is incremented each time the resource is modified.
  const GetNamespaceDiscoveredDeviceResult({
    this.attributes,
    required this.azureApiVersion,
    required this.discoveryId,
    this.endpoints,
    required this.extendedLocation,
    this.externalDeviceId,
    required this.id,
    required this.location,
    this.manufacturer,
    this.model,
    required this.name,
    this.operatingSystem,
    this.operatingSystemVersion,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'azureApiVersion': azureApiVersion,
      'discoveryId': discoveryId,
      'endpoints': ?endpoints?.toMap(),
      'extendedLocation': extendedLocation.toMap(),
      'externalDeviceId': ?externalDeviceId,
      'id': id,
      'location': location,
      'manufacturer': ?manufacturer,
      'model': ?model,
      'name': name,
      'operatingSystem': ?operatingSystem,
      'operatingSystemVersion': ?operatingSystemVersion,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': version,
    };
  }

  factory GetNamespaceDiscoveredDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceDiscoveredDeviceResult(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return guardedValue; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      discoveryId: map['discoveryId'] as String,
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return DiscoveredMessagingEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      externalDeviceId: (() { final guardedValue = map['externalDeviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      manufacturer: (() { final guardedValue = map['manufacturer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operatingSystemVersion: (() { final guardedValue = map['operatingSystemVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      version: map['version'] as double,
    );
  }
}
