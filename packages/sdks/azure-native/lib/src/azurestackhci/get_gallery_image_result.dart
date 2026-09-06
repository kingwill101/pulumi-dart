// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'gallery_image_identifier_response.dart';
import 'gallery_image_status_response.dart';
import 'gallery_image_version_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGalleryImage.
class GetGalleryImageResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Datasource for the gallery image when provisioning with cloud-init [NoCloud, Azure]
  final String? cloudInitDataSource;
  /// Storage ContainerID of the storage container to be used for gallery image
  final String? containerId;
  /// The extendedLocation of the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// The hypervisor generation of the Virtual Machine [V1, V2]
  final String? hyperVGeneration;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// This is the gallery image definition identifier.
  final GalleryImageIdentifierResponse? identifier;
  /// location of the image the gallery image should be created from
  final String? imagePath;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Operating system type that the gallery image uses [Windows, Linux]
  final String? osType;
  /// Provisioning state of the gallery image.
  final String? provisioningState;
  /// Resource ID of the source virtual machine from whose OS disk the gallery image is created.
  final String? sourceVirtualMachineId;
  /// The observed state of gallery images
  final GalleryImageStatusResponse? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Specifies information about the gallery image version that you want to create or update.
  final GalleryImageVersionResponse? version;

  /// Creates a new [GetGalleryImageResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cloudInitDataSource] Datasource for the gallery image when provisioning with cloud-init [NoCloud, Azure]
  /// [containerId] Storage ContainerID of the storage container to be used for gallery image
  /// [extendedLocation] The extendedLocation of the resource.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine [V1, V2]
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identifier] This is the gallery image definition identifier.
  /// [imagePath] location of the image the gallery image should be created from
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [osType] Operating system type that the gallery image uses [Windows, Linux]
  /// [provisioningState] Provisioning state of the gallery image.
  /// [sourceVirtualMachineId] Resource ID of the source virtual machine from whose OS disk the gallery image is created.
  /// [status] The observed state of gallery images
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Specifies information about the gallery image version that you want to create or update.
  const GetGalleryImageResult({
    this.azureApiVersion,
    this.cloudInitDataSource,
    this.containerId,
    this.extendedLocation,
    this.hyperVGeneration,
    this.id,
    this.identifier,
    this.imagePath,
    this.location,
    this.name,
    this.osType,
    this.provisioningState,
    this.sourceVirtualMachineId,
    this.status,
    this.systemData,
    this.tags,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'cloudInitDataSource': ?cloudInitDataSource,
      'containerId': ?containerId,
      'extendedLocation': ?extendedLocation?.toMap(),
      'hyperVGeneration': ?hyperVGeneration,
      'id': ?id,
      'identifier': ?identifier?.toMap(),
      'imagePath': ?imagePath,
      'location': ?location,
      'name': ?name,
      'osType': ?osType,
      'provisioningState': ?provisioningState,
      'sourceVirtualMachineId': ?sourceVirtualMachineId,
      'status': ?status?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'version': ?version?.toMap(),
    };
  }

  factory GetGalleryImageResult.fromMap(Map<String, dynamic> map) {
    return GetGalleryImageResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudInitDataSource: (() { final guardedValue = map['cloudInitDataSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerId: (() { final guardedValue = map['containerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return GalleryImageIdentifierResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      imagePath: (() { final guardedValue = map['imagePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceVirtualMachineId: (() { final guardedValue = map['sourceVirtualMachineId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return GalleryImageStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return GalleryImageVersionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
