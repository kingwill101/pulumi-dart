// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to an Azure Virtual Machines Marketplace image or the Azure Image resource of a custom Virtual Machine. To get the list of all imageReferences verified by Azure Batch, see the 'List supported node agent SKUs' operation.
class ImageReference {
  /// This property is mutually exclusive with other properties and can be fetched from community gallery image GET call.
  final pulumi.Input<String>? communityGalleryImageId;
  /// This property is mutually exclusive with other properties. The Azure Compute Gallery Image must have replicas in the same region as the Azure Batch account. For information about the firewall settings for the Batch node agent to communicate with the Batch service see https://learn.microsoft.com/azure/batch/batch-api-basics#virtual-network-vnet-and-firewall-configuration.
  final pulumi.Input<String>? id;
  /// For example, UbuntuServer or WindowsServer.
  final pulumi.Input<String>? offer;
  /// For example, Canonical or MicrosoftWindowsServer.
  final pulumi.Input<String>? publisher;
  /// This property is mutually exclusive with other properties and can be fetched from shared gallery image GET call.
  final pulumi.Input<String>? sharedGalleryImageId;
  /// For example, 18.04-LTS or 2022-datacenter.
  final pulumi.Input<String>? sku;
  /// A value of 'latest' can be specified to select the latest version of an image. If omitted, the default is 'latest'.
  final pulumi.Input<String>? version;

  /// Creates a new [ImageReference].
  /// [communityGalleryImageId] This property is mutually exclusive with other properties and can be fetched from community gallery image GET call.
  /// [id] This property is mutually exclusive with other properties. The Azure Compute Gallery Image must have replicas in the same region as the Azure Batch account. For information about the firewall settings for the Batch node agent to communicate with the Batch service see https://learn.microsoft.com/azure/batch/batch-api-basics#virtual-network-vnet-and-firewall-configuration.
  /// [offer] For example, UbuntuServer or WindowsServer.
  /// [publisher] For example, Canonical or MicrosoftWindowsServer.
  /// [sharedGalleryImageId] This property is mutually exclusive with other properties and can be fetched from shared gallery image GET call.
  /// [sku] For example, 18.04-LTS or 2022-datacenter.
  /// [version] A value of 'latest' can be specified to select the latest version of an image. If omitted, the default is 'latest'.
  ImageReference({
    this.communityGalleryImageId,
    this.id,
    this.offer,
    this.publisher,
    this.sharedGalleryImageId,
    this.sku,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityGalleryImageId': ?communityGalleryImageId,
      'id': ?id,
      'offer': ?offer,
      'publisher': ?publisher,
      'sharedGalleryImageId': ?sharedGalleryImageId,
      'sku': ?sku,
      'version': ?version,
    };
  }

  factory ImageReference.fromMap(Map<String, dynamic> map) {
    return ImageReference(
      communityGalleryImageId: map['communityGalleryImageId'] == null ? null : (map['communityGalleryImageId']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      offer: map['offer'] == null ? null : (map['offer']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      sharedGalleryImageId: map['sharedGalleryImageId'] == null ? null : (map['sharedGalleryImageId']! as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

