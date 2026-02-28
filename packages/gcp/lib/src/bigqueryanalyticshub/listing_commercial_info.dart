// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_commercial_info_cloud_marketplace.dart';

class ListingCommercialInfo {
  /// (Output)
  /// Details of the Marketplace Data Product associated with the Listing.
  /// Structure is documented below.
  final List<ListingCommercialInfoCloudMarketplace>? cloudMarketplaces;

  /// Creates a new [ListingCommercialInfo].
  /// [cloudMarketplaces] (Output)
  ListingCommercialInfo({
    this.cloudMarketplaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudMarketplacesValue = cloudMarketplaces;
    if (cloudMarketplacesValue != null) {
      map['cloudMarketplaces'] = pulumi.Input.encodeList<
              ListingCommercialInfoCloudMarketplace, Map<String, dynamic>>(
          cloudMarketplacesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ListingCommercialInfo.fromMap(Map<String, dynamic> map) {
    return ListingCommercialInfo(
      cloudMarketplaces: map['cloudMarketplaces'] == null
          ? null
          : pulumi.Input.decodeList<ListingCommercialInfoCloudMarketplace>(
              map['cloudMarketplaces'],
              (value) => ListingCommercialInfoCloudMarketplace.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
