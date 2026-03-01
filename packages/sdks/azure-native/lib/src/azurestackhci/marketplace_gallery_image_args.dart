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
  MarketplaceGalleryImageArgs({
    pulumi.Output<String>? cloudInitDataSource,
    pulumi.Output<String>? containerId,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? hyperVGeneration,
    pulumi.Output<GalleryImageIdentifier>? identifier,
    pulumi.Output<String>? location,
    pulumi.Output<String>? marketplaceGalleryImageName,
    required pulumi.Output<String> osType,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<GalleryImageVersion>? version,
  }) :
      cloudInitDataSource = pulumi.Input.asOptionalInput<String>(cloudInitDataSource),
      containerId = pulumi.Input.asOptionalInput<String>(containerId),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      hyperVGeneration = pulumi.Input.asOptionalInput<String>(hyperVGeneration),
      identifier = pulumi.Input.asOptionalInput<GalleryImageIdentifier>(identifier),
      location = pulumi.Input.asOptionalInput<String>(location),
      marketplaceGalleryImageName = pulumi.Input.asOptionalInput<String>(marketplaceGalleryImageName),
      osType = pulumi.Input.asInput<String>(osType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<GalleryImageVersion>(version);

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
      cloudInitDataSource: map['cloudInitDataSource'] == null ? null : pulumi.Output.create<String>(map['cloudInitDataSource'] as String),
      containerId: map['containerId'] == null ? null : pulumi.Output.create<String>(map['containerId'] as String),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : pulumi.Output.create<String>(map['hyperVGeneration'] as String),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<GalleryImageIdentifier>(GalleryImageIdentifier.fromMap((map['identifier'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      marketplaceGalleryImageName: map['marketplaceGalleryImageName'] == null ? null : pulumi.Output.create<String>(map['marketplaceGalleryImageName'] as String),
      osType: pulumi.Output.create<String>(map['osType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<GalleryImageVersion>(GalleryImageVersion.fromMap((map['version'] as Map).cast<String, dynamic>())),
    );
  }
}

