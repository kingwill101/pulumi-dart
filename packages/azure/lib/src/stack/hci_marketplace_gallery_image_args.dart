// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_marketplace_gallery_image_identifier.dart';

/// {@template pulumi_stack_hci_marketplace_gallery_image_hci_marketplace_gallery_image_args_doc}
/// The set of arguments for HciMarketplaceGalleryImage.
/// {@endtemplate}
/// {@macro pulumi_stack_hci_marketplace_gallery_image_hci_marketplace_gallery_image_args_doc}
class HciMarketplaceGalleryImageArgs {
  /// The ID of the Custom Location where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> customLocationId;
  /// The hypervisor generation of the Azure Stack HCI Marketplace Gallery Image. Possible values are `V1` and `V2`. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String> hypervGeneration;
  /// An `identifier` block as defined below. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<HciMarketplaceGalleryImageIdentifier> identifier;
  /// The Azure Region where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String>? name;
  /// The Operating System type of the Azure Stack HCI Marketplace Gallery Image. Possible values are `Windows` and `Linux`. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String> osType;
  /// The name of the Resource Group where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Azure Stack HCI Storage Path used for this Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<String>? storagePathId;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Marketplace Gallery Image.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version of the Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String> version;

  /// Creates a new [HciMarketplaceGalleryImageArgs].
  /// [customLocationId] The ID of the Custom Location where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new resource to be created.
  /// [hypervGeneration] The hypervisor generation of the Azure Stack HCI Marketplace Gallery Image. Possible values are `V1` and `V2`. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [identifier] An `identifier` block as defined below. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [location] The Azure Region where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [name] The name which should be used for this Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [osType] The Operating System type of the Azure Stack HCI Marketplace Gallery Image. Possible values are `Windows` and `Linux`. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [storagePathId] The ID of the Azure Stack HCI Storage Path used for this Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Stack HCI Marketplace Gallery Image.
  /// [version] The version of the Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  HciMarketplaceGalleryImageArgs({
    required String customLocationId,
    required String hypervGeneration,
    required HciMarketplaceGalleryImageIdentifier identifier,
    String? location,
    String? name,
    required String osType,
    required String resourceGroupName,
    String? storagePathId,
    Map<String, String>? tags,
    required String version,
  }) :
      customLocationId = pulumi.Input.asInput<String>(customLocationId),
      hypervGeneration = pulumi.Input.asInput<String>(hypervGeneration),
      identifier = pulumi.Input.asInput<HciMarketplaceGalleryImageIdentifier>(identifier),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      osType = pulumi.Input.asInput<String>(osType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storagePathId = pulumi.Input.asOptionalInput<String>(storagePathId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': customLocationId,
      'hypervGeneration': hypervGeneration,
      'identifier': pulumi.Input.mapInputValue<HciMarketplaceGalleryImageIdentifier, Map<String, dynamic>>(identifier, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'osType': osType,
      'resourceGroupName': resourceGroupName,
      'storagePathId': ?storagePathId,
      'tags': ?tags,
      'version': version,
    };
  }

  factory HciMarketplaceGalleryImageArgs.fromMap(Map<String, dynamic> map) {
    return HciMarketplaceGalleryImageArgs(
      customLocationId: map['customLocationId'] as String,
      hypervGeneration: map['hypervGeneration'] as String,
      identifier: HciMarketplaceGalleryImageIdentifier.fromMap((map['identifier'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      osType: map['osType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storagePathId: map['storagePathId'] == null ? null : map['storagePathId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
    );
  }
}

