// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_marketplace_gallery_image_args_doc}
/// Arguments for getMarketplaceGalleryImage.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_marketplace_gallery_image_args_doc}
class GetMarketplaceGalleryImageArgs {
  /// Name of the marketplace gallery image
  final pulumi.Input<String> marketplaceGalleryImageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMarketplaceGalleryImageArgs].
  /// [marketplaceGalleryImageName] Name of the marketplace gallery image
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMarketplaceGalleryImageArgs({
    required pulumi.Output<String> marketplaceGalleryImageName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      marketplaceGalleryImageName = pulumi.Input.asInput<String>(marketplaceGalleryImageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplaceGalleryImageName': marketplaceGalleryImageName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMarketplaceGalleryImageArgs.fromMap(Map<String, dynamic> map) {
    return GetMarketplaceGalleryImageArgs(
      marketplaceGalleryImageName: pulumi.Output.create<String>(map['marketplaceGalleryImageName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

