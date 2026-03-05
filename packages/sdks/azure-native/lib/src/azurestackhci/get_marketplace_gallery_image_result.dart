// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'gallery_image_identifier_response.dart';
import 'gallery_image_version_response.dart';
import 'marketplace_gallery_image_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMarketplaceGalleryImage.
class GetMarketplaceGalleryImageResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Datasource for the gallery image when provisioning with cloud-init [NoCloud, Azure]
  final String? cloudInitDataSource;
  /// Storage ContainerID of the storage container to be used for marketplace gallery image
  final String? containerId;
  /// The extendedLocation of the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// The hypervisor generation of the Virtual Machine [V1, V2]
  final String? hyperVGeneration;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// This is the gallery image definition identifier.
  final GalleryImageIdentifierResponse? identifier;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Operating system type that the gallery image uses [Windows, Linux]
  final String osType;
  /// Provisioning state of the marketplace gallery image.
  final String provisioningState;
  /// The observed state of marketplace gallery images
  final MarketplaceGalleryImageStatusResponse status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Specifies information about the gallery image version that you want to create or update.
  final GalleryImageVersionResponse? version;

  /// Creates a new [GetMarketplaceGalleryImageResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cloudInitDataSource] Datasource for the gallery image when provisioning with cloud-init [NoCloud, Azure]
  /// [containerId] Storage ContainerID of the storage container to be used for marketplace gallery image
  /// [extendedLocation] The extendedLocation of the resource.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine [V1, V2]
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identifier] This is the gallery image definition identifier.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [osType] Operating system type that the gallery image uses [Windows, Linux]
  /// [provisioningState] Provisioning state of the marketplace gallery image.
  /// [status] The observed state of marketplace gallery images
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Specifies information about the gallery image version that you want to create or update.
  GetMarketplaceGalleryImageResult({
    required this.azureApiVersion,
    this.cloudInitDataSource,
    this.containerId,
    this.extendedLocation,
    this.hyperVGeneration,
    required this.id,
    this.identifier,
    required this.location,
    required this.name,
    required this.osType,
    required this.provisioningState,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cloudInitDataSource': ?cloudInitDataSource,
      'containerId': ?containerId,
      'extendedLocation': ?extendedLocation?.toMap(),
      'hyperVGeneration': ?hyperVGeneration,
      'id': id,
      'identifier': ?identifier?.toMap(),
      'location': location,
      'name': name,
      'osType': osType,
      'provisioningState': provisioningState,
      'status': status.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': ?version?.toMap(),
    };
  }

  factory GetMarketplaceGalleryImageResult.fromMap(Map<String, dynamic> map) {
    return GetMarketplaceGalleryImageResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cloudInitDataSource: (() { final guardedValue = map['cloudInitDataSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerId: (() { final guardedValue = map['containerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return GalleryImageIdentifierResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      osType: map['osType'] as String,
      provisioningState: map['provisioningState'] as String,
      status: MarketplaceGalleryImageStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return GalleryImageVersionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

