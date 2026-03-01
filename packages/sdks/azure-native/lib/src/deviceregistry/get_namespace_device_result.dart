// ignore_for_file: unused_element, unnecessary_cast

import 'device_status_response.dart';
import 'extended_location_response.dart';
import 'messaging_endpoints_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNamespaceDevice.
class GetNamespaceDeviceResult {
  /// A set of key-value pairs that contain custom attributes set by the customer.
  final dynamic attributes;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Reference to a device. Populated only if the device had been created from discovery flow. Discovered device name must be provided.
  final String? discoveredDeviceRef;
  /// Indicates if the resource is enabled or not.
  final bool? enabled;
  /// Property bag containing the device's unassigned and assigned endpoints.
  final MessagingEndpointsResponse? endpoints;
  /// Resource Tag.
  final String etag;
  /// The extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// The Device ID provided by the customer.
  final String? externalDeviceId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// A timestamp (in UTC) that is updated each time the resource is modified.
  final String lastTransitionTime;
  /// The geo-location where the resource lives
  final String location;
  /// Device manufacturer.
  final String? manufacturer;
  /// Device model.
  final String? model;
  /// The name of the resource
  final String name;
  /// Device operating system.
  final String? operatingSystem;
  /// Device operating system version.
  final String? operatingSystemVersion;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Device status updates.
  final DeviceStatusResponse status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// A unique identifier for the device.
  final String uuid;
  /// An integer that is incremented each time the resource is modified.
  final double version;

  /// Creates a new [GetNamespaceDeviceResult].
  /// [attributes] A set of key-value pairs that contain custom attributes set by the customer.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [discoveredDeviceRef] Reference to a device. Populated only if the device had been created from discovery flow. Discovered device name must be provided.
  /// [enabled] Indicates if the resource is enabled or not.
  /// [endpoints] Property bag containing the device's unassigned and assigned endpoints.
  /// [etag] Resource Tag.
  /// [extendedLocation] The extended location.
  /// [externalDeviceId] The Device ID provided by the customer.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastTransitionTime] A timestamp (in UTC) that is updated each time the resource is modified.
  /// [location] The geo-location where the resource lives
  /// [manufacturer] Device manufacturer.
  /// [model] Device model.
  /// [name] The name of the resource
  /// [operatingSystem] Device operating system.
  /// [operatingSystemVersion] Device operating system version.
  /// [provisioningState] Provisioning state of the resource.
  /// [status] Device status updates.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uuid] A unique identifier for the device.
  /// [version] An integer that is incremented each time the resource is modified.
  GetNamespaceDeviceResult({
    this.attributes,
    required this.azureApiVersion,
    this.discoveredDeviceRef,
    this.enabled,
    this.endpoints,
    required this.etag,
    this.extendedLocation,
    this.externalDeviceId,
    required this.id,
    required this.lastTransitionTime,
    required this.location,
    this.manufacturer,
    this.model,
    required this.name,
    this.operatingSystem,
    this.operatingSystemVersion,
    required this.provisioningState,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
    required this.uuid,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'azureApiVersion': azureApiVersion,
      'discoveredDeviceRef': ?discoveredDeviceRef,
      'enabled': ?enabled,
      'endpoints': ?endpoints == null ? null : endpoints!.toMap(),
      'etag': etag,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'externalDeviceId': ?externalDeviceId,
      'id': id,
      'lastTransitionTime': lastTransitionTime,
      'location': location,
      'manufacturer': ?manufacturer,
      'model': ?model,
      'name': name,
      'operatingSystem': ?operatingSystem,
      'operatingSystemVersion': ?operatingSystemVersion,
      'provisioningState': provisioningState,
      'status': status.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uuid': uuid,
      'version': version,
    };
  }

  factory GetNamespaceDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceDeviceResult(
      attributes: map['attributes'] == null ? null : map['attributes'],
      azureApiVersion: map['azureApiVersion'] as String,
      discoveredDeviceRef: map['discoveredDeviceRef'] == null ? null : map['discoveredDeviceRef'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      endpoints: map['endpoints'] == null ? null : MessagingEndpointsResponse.fromMap((map['endpoints'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      externalDeviceId: map['externalDeviceId'] == null ? null : map['externalDeviceId'] as String,
      id: map['id'] as String,
      lastTransitionTime: map['lastTransitionTime'] as String,
      location: map['location'] as String,
      manufacturer: map['manufacturer'] == null ? null : map['manufacturer'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      name: map['name'] as String,
      operatingSystem: map['operatingSystem'] == null ? null : map['operatingSystem'] as String,
      operatingSystemVersion: map['operatingSystemVersion'] == null ? null : map['operatingSystemVersion'] as String,
      provisioningState: map['provisioningState'] as String,
      status: DeviceStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
      version: map['version'] as double,
    );
  }
}

