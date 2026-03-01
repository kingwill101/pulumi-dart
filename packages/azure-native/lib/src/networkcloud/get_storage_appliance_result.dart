// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_credentials_response.dart';
import 'extended_location_response.dart';
import 'secret_rotation_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStorageAppliance.
class GetStorageApplianceResult {
  /// The credentials of the administrative interface on this storage appliance.
  final AdministrativeCredentialsResponse administratorCredentials;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The total capacity of the storage appliance. Measured in GiB.
  final double capacity;
  /// The amount of storage consumed.
  final double capacityUsed;
  /// The resource ID of the cluster this storage appliance is associated with. Measured in GiB.
  final String clusterId;
  /// The detailed status of the storage appliance.
  final String detailedStatus;
  /// The descriptive message about the current detailed status.
  final String detailedStatusMessage;
  /// Resource ETag.
  final String etag;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The endpoint for the management interface of the storage appliance.
  final String managementIpv4Address;
  /// The manufacturer of the storage appliance.
  final String manufacturer;
  /// The model of the storage appliance.
  final String model;
  /// The name of the resource
  final String name;
  /// The provisioning state of the storage appliance.
  final String provisioningState;
  /// The resource ID of the rack where this storage appliance resides.
  final String rackId;
  /// The slot the storage appliance is in the rack based on the BOM configuration.
  final double rackSlot;
  /// The indicator of whether the storage appliance supports remote vendor management.
  final String remoteVendorManagementFeature;
  /// The indicator of whether the remote vendor management feature is enabled or disabled, or unsupported if it is an unsupported feature.
  final String remoteVendorManagementStatus;
  /// The list of statuses that represent secret rotation activity.
  final List<SecretRotationStatusResponse> secretRotationStatus;
  /// The serial number for the storage appliance.
  final String serialNumber;
  /// The SKU for the storage appliance.
  final String storageApplianceSkuId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The version of the storage appliance.
  final String version;

  /// Creates a new [GetStorageApplianceResult].
  /// [administratorCredentials] The credentials of the administrative interface on this storage appliance.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [capacity] The total capacity of the storage appliance. Measured in GiB.
  /// [capacityUsed] The amount of storage consumed.
  /// [clusterId] The resource ID of the cluster this storage appliance is associated with. Measured in GiB.
  /// [detailedStatus] The detailed status of the storage appliance.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [managementIpv4Address] The endpoint for the management interface of the storage appliance.
  /// [manufacturer] The manufacturer of the storage appliance.
  /// [model] The model of the storage appliance.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the storage appliance.
  /// [rackId] The resource ID of the rack where this storage appliance resides.
  /// [rackSlot] The slot the storage appliance is in the rack based on the BOM configuration.
  /// [remoteVendorManagementFeature] The indicator of whether the storage appliance supports remote vendor management.
  /// [remoteVendorManagementStatus] The indicator of whether the remote vendor management feature is enabled or disabled, or unsupported if it is an unsupported feature.
  /// [secretRotationStatus] The list of statuses that represent secret rotation activity.
  /// [serialNumber] The serial number for the storage appliance.
  /// [storageApplianceSkuId] The SKU for the storage appliance.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] The version of the storage appliance.
  GetStorageApplianceResult({
    required this.administratorCredentials,
    required this.azureApiVersion,
    required this.capacity,
    required this.capacityUsed,
    required this.clusterId,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.etag,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.managementIpv4Address,
    required this.manufacturer,
    required this.model,
    required this.name,
    required this.provisioningState,
    required this.rackId,
    required this.rackSlot,
    required this.remoteVendorManagementFeature,
    required this.remoteVendorManagementStatus,
    required this.secretRotationStatus,
    required this.serialNumber,
    required this.storageApplianceSkuId,
    required this.systemData,
    this.tags,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorCredentials': administratorCredentials.toMap(),
      'azureApiVersion': azureApiVersion,
      'capacity': capacity,
      'capacityUsed': capacityUsed,
      'clusterId': clusterId,
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'etag': etag,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'managementIpv4Address': managementIpv4Address,
      'manufacturer': manufacturer,
      'model': model,
      'name': name,
      'provisioningState': provisioningState,
      'rackId': rackId,
      'rackSlot': rackSlot,
      'remoteVendorManagementFeature': remoteVendorManagementFeature,
      'remoteVendorManagementStatus': remoteVendorManagementStatus,
      'secretRotationStatus': pulumi.Input.encodeList<SecretRotationStatusResponse, Map<String, dynamic>>(secretRotationStatus, (value) => value.toMap()),
      'serialNumber': serialNumber,
      'storageApplianceSkuId': storageApplianceSkuId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': version,
    };
  }

  factory GetStorageApplianceResult.fromMap(Map<String, dynamic> map) {
    return GetStorageApplianceResult(
      administratorCredentials: AdministrativeCredentialsResponse.fromMap((map['administratorCredentials'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      capacity: map['capacity'] as double,
      capacityUsed: map['capacityUsed'] as double,
      clusterId: map['clusterId'] as String,
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      etag: map['etag'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      managementIpv4Address: map['managementIpv4Address'] as String,
      manufacturer: map['manufacturer'] as String,
      model: map['model'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      rackId: map['rackId'] as String,
      rackSlot: map['rackSlot'] as double,
      remoteVendorManagementFeature: map['remoteVendorManagementFeature'] as String,
      remoteVendorManagementStatus: map['remoteVendorManagementStatus'] as String,
      secretRotationStatus: pulumi.Input.decodeList<SecretRotationStatusResponse>(map['secretRotationStatus'], (value) => SecretRotationStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      serialNumber: map['serialNumber'] as String,
      storageApplianceSkuId: map['storageApplianceSkuId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

