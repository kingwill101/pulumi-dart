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
  final String? azureApiVersion;
  /// Reference to a device. Populated only if the device had been created from discovery flow. Discovered device name must be provided.
  final String? discoveredDeviceRef;
  /// Indicates if the resource is enabled or not.
  final bool? enabled;
  /// Property bag containing the device's unassigned and assigned endpoints.
  final MessagingEndpointsResponse? endpoints;
  /// Resource Tag.
  final String? etag;
  /// The extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// The Device ID provided by the customer.
  final String? externalDeviceId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// A timestamp (in UTC) that is updated each time the resource is modified.
  final String? lastTransitionTime;
  /// The geo-location where the resource lives
  final String? location;
  /// Device manufacturer.
  final String? manufacturer;
  /// Device model.
  final String? model;
  /// The name of the resource
  final String? name;
  /// Device operating system.
  final String? operatingSystem;
  /// Device operating system version.
  final String? operatingSystemVersion;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Device status updates.
  final DeviceStatusResponse? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// A unique identifier for the device.
  final String? uuid;
  /// An integer that is incremented each time the resource is modified.
  final double? version;

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
    this.azureApiVersion,
    this.discoveredDeviceRef,
    bool? enabled,
    this.endpoints,
    this.etag,
    this.extendedLocation,
    this.externalDeviceId,
    this.id,
    this.lastTransitionTime,
    this.location,
    this.manufacturer,
    this.model,
    this.name,
    this.operatingSystem,
    this.operatingSystemVersion,
    this.provisioningState,
    this.status,
    this.systemData,
    this.tags,
    this.type,
    this.uuid,
    this.version,
  }) : enabled = enabled ?? true;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'azureApiVersion': ?azureApiVersion,
      'discoveredDeviceRef': ?discoveredDeviceRef,
      'enabled': ?enabled,
      'endpoints': ?endpoints?.toMap(),
      'etag': ?etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'externalDeviceId': ?externalDeviceId,
      'id': ?id,
      'lastTransitionTime': ?lastTransitionTime,
      'location': ?location,
      'manufacturer': ?manufacturer,
      'model': ?model,
      'name': ?name,
      'operatingSystem': ?operatingSystem,
      'operatingSystemVersion': ?operatingSystemVersion,
      'provisioningState': ?provisioningState,
      'status': ?status?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uuid': ?uuid,
      'version': ?version,
    };
  }

  factory GetNamespaceDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceDeviceResult(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return guardedValue; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoveredDeviceRef: (() { final guardedValue = map['discoveredDeviceRef']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return MessagingEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      externalDeviceId: (() { final guardedValue = map['externalDeviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      manufacturer: (() { final guardedValue = map['manufacturer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operatingSystemVersion: (() { final guardedValue = map['operatingSystemVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return DeviceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
