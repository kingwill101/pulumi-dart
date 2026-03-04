// ignore_for_file: unused_element, unnecessary_cast

import 'data_residency_response.dart';
import 'edge_profile_response.dart';
import 'resource_identity_response.dart';
import 'resource_move_details_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDevice.
class GetDeviceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Type of compute roles configured.
  final List<String> configuredRoleTypes;

  /// The Data Box Edge/Gateway device culture.
  final String culture;

  /// The status of the Data Box Edge/Gateway device.
  final String dataBoxEdgeDeviceStatus;

  /// The details of data-residency related properties for this resource
  final DataResidencyResponse? dataResidency;

  /// The Description of the Data Box Edge/Gateway device.
  final String description;

  /// The device software version number of the device (eg: 1.2.18105.6).
  final String deviceHcsVersion;

  /// The Data Box Edge/Gateway device local capacity in MB.
  final double deviceLocalCapacity;

  /// The Data Box Edge/Gateway device model.
  final String deviceModel;

  /// The Data Box Edge/Gateway device software version.
  final String deviceSoftwareVersion;

  /// The type of the Data Box Edge/Gateway device.
  final String deviceType;

  /// The details of Edge Profile for this resource
  final EdgeProfileResponse edgeProfile;

  /// The etag for the devices.
  final String? etag;

  /// The Data Box Edge/Gateway device name.
  final String friendlyName;

  /// The path ID that uniquely identifies the object.
  final String id;

  /// Msi identity of the resource
  final ResourceIdentityResponse? identity;

  /// The kind of the device.
  final String kind;

  /// Kubernetes Workload Profile
  final String kubernetesWorkloadProfile;

  /// The location of the device. This is a supported and registered Azure geographical region (for example, West US, East US, or Southeast Asia). The geographical region of a device cannot be changed once it is created, but if an identical geographical region is specified on update, the request will succeed.
  final String location;

  /// The description of the Data Box Edge/Gateway device model.
  final String modelDescription;

  /// The object name.
  final String name;

  /// The number of nodes in the cluster.
  final int nodeCount;

  /// The details of the move operation on this resource.
  final ResourceMoveDetailsResponse resourceMoveDetails;

  /// The Serial Number of Data Box Edge/Gateway device.
  final String serialNumber;

  /// The SKU type.
  final SkuResponse? sku;

  /// DataBoxEdge Resource
  final SystemDataResponse systemData;

  /// The list of tags that describe the device. These tags can be used to view and group this device (across resource groups).
  final Map<String, String>? tags;

  /// The Data Box Edge/Gateway device timezone.
  final String timeZone;

  /// The hierarchical type of the object.
  final String type;

  /// Creates a new [GetDeviceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configuredRoleTypes] Type of compute roles configured.
  /// [culture] The Data Box Edge/Gateway device culture.
  /// [dataBoxEdgeDeviceStatus] The status of the Data Box Edge/Gateway device.
  /// [dataResidency] The details of data-residency related properties for this resource
  /// [description] The Description of the Data Box Edge/Gateway device.
  /// [deviceHcsVersion] The device software version number of the device (eg: 1.2.18105.6).
  /// [deviceLocalCapacity] The Data Box Edge/Gateway device local capacity in MB.
  /// [deviceModel] The Data Box Edge/Gateway device model.
  /// [deviceSoftwareVersion] The Data Box Edge/Gateway device software version.
  /// [deviceType] The type of the Data Box Edge/Gateway device.
  /// [edgeProfile] The details of Edge Profile for this resource
  /// [etag] The etag for the devices.
  /// [friendlyName] The Data Box Edge/Gateway device name.
  /// [id] The path ID that uniquely identifies the object.
  /// [identity] Msi identity of the resource
  /// [kind] The kind of the device.
  /// [kubernetesWorkloadProfile] Kubernetes Workload Profile
  /// [location] The location of the device. This is a supported and registered Azure geographical region (for example, West US, East US, or Southeast Asia). The geographical region of a device cannot be changed once it is created, but if an identical geographical region is specified on update, the request will succeed.
  /// [modelDescription] The description of the Data Box Edge/Gateway device model.
  /// [name] The object name.
  /// [nodeCount] The number of nodes in the cluster.
  /// [resourceMoveDetails] The details of the move operation on this resource.
  /// [serialNumber] The Serial Number of Data Box Edge/Gateway device.
  /// [sku] The SKU type.
  /// [systemData] DataBoxEdge Resource
  /// [tags] The list of tags that describe the device. These tags can be used to view and group this device (across resource groups).
  /// [timeZone] The Data Box Edge/Gateway device timezone.
  /// [type] The hierarchical type of the object.
  GetDeviceResult({
    required this.azureApiVersion,
    required this.configuredRoleTypes,
    required this.culture,
    required this.dataBoxEdgeDeviceStatus,
    this.dataResidency,
    required this.description,
    required this.deviceHcsVersion,
    required this.deviceLocalCapacity,
    required this.deviceModel,
    required this.deviceSoftwareVersion,
    required this.deviceType,
    required this.edgeProfile,
    this.etag,
    required this.friendlyName,
    required this.id,
    this.identity,
    required this.kind,
    required this.kubernetesWorkloadProfile,
    required this.location,
    required this.modelDescription,
    required this.name,
    required this.nodeCount,
    required this.resourceMoveDetails,
    required this.serialNumber,
    this.sku,
    required this.systemData,
    this.tags,
    required this.timeZone,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'configuredRoleTypes': configuredRoleTypes,
      'culture': culture,
      'dataBoxEdgeDeviceStatus': dataBoxEdgeDeviceStatus,
      'dataResidency': ?dataResidency?.toMap(),
      'description': description,
      'deviceHcsVersion': deviceHcsVersion,
      'deviceLocalCapacity': deviceLocalCapacity,
      'deviceModel': deviceModel,
      'deviceSoftwareVersion': deviceSoftwareVersion,
      'deviceType': deviceType,
      'edgeProfile': edgeProfile.toMap(),
      'etag': ?etag,
      'friendlyName': friendlyName,
      'id': id,
      'identity': ?identity?.toMap(),
      'kind': kind,
      'kubernetesWorkloadProfile': kubernetesWorkloadProfile,
      'location': location,
      'modelDescription': modelDescription,
      'name': name,
      'nodeCount': nodeCount,
      'resourceMoveDetails': resourceMoveDetails.toMap(),
      'serialNumber': serialNumber,
      'sku': ?sku?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeZone': timeZone,
      'type': type,
    };
  }

  factory GetDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      configuredRoleTypes: (map['configuredRoleTypes'] as List).cast<String>(),
      culture: map['culture'] as String,
      dataBoxEdgeDeviceStatus: map['dataBoxEdgeDeviceStatus'] as String,
      dataResidency: (() {
        final guardedValue = map['dataResidency'];
        if (guardedValue == null) return null;
        return DataResidencyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      description: map['description'] as String,
      deviceHcsVersion: map['deviceHcsVersion'] as String,
      deviceLocalCapacity: map['deviceLocalCapacity'] as double,
      deviceModel: map['deviceModel'] as String,
      deviceSoftwareVersion: map['deviceSoftwareVersion'] as String,
      deviceType: map['deviceType'] as String,
      edgeProfile: EdgeProfileResponse.fromMap(
        (map['edgeProfile']! as Map).cast<String, dynamic>(),
      ),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      friendlyName: map['friendlyName'] as String,
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return ResourceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      kind: map['kind'] as String,
      kubernetesWorkloadProfile: map['kubernetesWorkloadProfile'] as String,
      location: map['location'] as String,
      modelDescription: map['modelDescription'] as String,
      name: map['name'] as String,
      nodeCount: map['nodeCount'] as int,
      resourceMoveDetails: ResourceMoveDetailsResponse.fromMap(
        (map['resourceMoveDetails']! as Map).cast<String, dynamic>(),
      ),
      serialNumber: map['serialNumber'] as String,
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
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      timeZone: map['timeZone'] as String,
      type: map['type'] as String,
    );
  }
}
