// ignore_for_file: unused_element, unnecessary_cast


class HciMarketplaceGalleryImageIdentifier {
  /// The offer of the Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final String offer;
  /// The publisher of the Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final String publisher;
  /// The sku of the Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final String sku;

  /// Creates a new [HciMarketplaceGalleryImageIdentifier].
  /// [offer] The offer of the Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [publisher] The publisher of the Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [sku] The sku of the Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  HciMarketplaceGalleryImageIdentifier({
    required this.offer,
    required this.publisher,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': offer,
      'publisher': publisher,
      'sku': sku,
    };
  }

  factory HciMarketplaceGalleryImageIdentifier.fromMap(Map<String, dynamic> map) {
    return HciMarketplaceGalleryImageIdentifier(
      offer: map['offer'] as String,
      publisher: map['publisher'] as String,
      sku: map['sku'] as String,
    );
  }
}

