// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listing_subscription_commercial_info_cloud_marketplace/listing_subscription_commercial_info_cloud_marketplace.dart';

class ListingSubscriptionCommercialInfo {
  /// (Output)
  /// Cloud Marketplace commercial metadata for this subscription.
  /// Structure is documented below.
  final List<ListingSubscriptionCommercialInfoCloudMarketplace>?
      cloudMarketplaces;

  ListingSubscriptionCommercialInfo({
    this.cloudMarketplaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudMarketplacesValue = cloudMarketplaces;
    if (cloudMarketplacesValue != null) {
      map['cloudMarketplaces'] = Input.encodeList<
              ListingSubscriptionCommercialInfoCloudMarketplace,
              Map<String, dynamic>>(
          cloudMarketplacesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ListingSubscriptionCommercialInfo.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionCommercialInfo(
      cloudMarketplaces: map['cloudMarketplaces'] == null
          ? null
          : Input.decodeList<ListingSubscriptionCommercialInfoCloudMarketplace>(
              map['cloudMarketplaces'],
              (value) =>
                  ListingSubscriptionCommercialInfoCloudMarketplace.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
