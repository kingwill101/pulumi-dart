// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'gallery_image_identifier.dart';
import 'gallery_image_version.dart';

/// {@template pulumi_azurestackhci_marketplace_gallery_image_args_doc}
/// The set of arguments for MarketplaceGalleryImage.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_marketplace_gallery_image_args_doc}
class MarketplaceGalleryImageArgs {
  /// Datasource for the gallery image when provisioning with cloud-init [NoCloud, Azure]
  final pulumi.Input<String>? cloudInitDataSource;
  /// Storage ContainerID of the storage container to be used for marketplace gallery image
  final pulumi.Input<String>? containerId;
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The hypervisor generation of the Virtual Machine [V1, V2]
  final pulumi.Input<String>? hyperVGeneration;
  /// This is the gallery image definition identifier.
  final pulumi.Input<GalleryImageIdentifier>? identifier;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the marketplace gallery image
  final pulumi.Input<String>? marketplaceGalleryImageName;
  /// Operating system type that the gallery image uses [Windows, Linux]
  final pulumi.Input<String> osType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies information about the gallery image version that you want to create or update.
  final pulumi.Input<GalleryImageVersion>? version;

  /// Creates a new [MarketplaceGalleryImageArgs].
  /// [cloudInitDataSource] Datasource for the gallery image when provisioning with cloud-init [NoCloud, Azure]
  /// [containerId] Storage ContainerID of the storage container to be used for marketplace gallery image
  /// [extendedLocation] The extendedLocation of the resource.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine [V1, V2]
  /// [identifier] This is the gallery image definition identifier.
  /// [location] The geo-location where the resource lives
  /// [marketplaceGalleryImageName] Name of the marketplace gallery image
  /// [osType] Operating system type that the gallery image uses [Windows, Linux]
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [version] Specifies information about the gallery image version that you want to create or update.
  const MarketplaceGalleryImageArgs({
    this.cloudInitDataSource,
    this.containerId,
    this.extendedLocation,
    this.hyperVGeneration,
    this.identifier,
    this.location,
    this.marketplaceGalleryImageName,
    required this.osType,
    required this.resourceGroupName,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudInitDataSource': ?cloudInitDataSource,
      'containerId': ?containerId,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hyperVGeneration': ?hyperVGeneration,
      'identifier': ?pulumi.Input.mapOptionalInputValue<GalleryImageIdentifier, Map<String, dynamic>>(identifier, (value) => value.toMap()),
      'location': ?location,
      'marketplaceGalleryImageName': ?marketplaceGalleryImageName,
      'osType': osType,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'version': ?pulumi.Input.mapOptionalInputValue<GalleryImageVersion, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory MarketplaceGalleryImageArgs.fromMap(Map<String, dynamic> map) {
    return MarketplaceGalleryImageArgs(
      cloudInitDataSource: (() { final guardedValue = map['cloudInitDataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerId: (() { final guardedValue = map['containerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryImageIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceGalleryImageName: (() { final guardedValue = map['marketplaceGalleryImageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryImageVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
