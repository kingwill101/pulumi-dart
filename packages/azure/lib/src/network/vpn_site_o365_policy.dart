// ignore_for_file: unused_element, unnecessary_cast

import 'vpn_site_o365_policy_traffic_category.dart';

class VpnSiteO365Policy {
  /// A `traffic_category` block as defined above.
  final VpnSiteO365PolicyTrafficCategory? trafficCategory;

  /// Creates a new [VpnSiteO365Policy].
  /// [trafficCategory] A `traffic_category` block as defined above.
  VpnSiteO365Policy({
    this.trafficCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trafficCategory': ?trafficCategory == null ? null : trafficCategory!.toMap(),
    };
  }

  factory VpnSiteO365Policy.fromMap(Map<String, dynamic> map) {
    return VpnSiteO365Policy(
      trafficCategory: map['trafficCategory'] == null ? null : VpnSiteO365PolicyTrafficCategory.fromMap((map['trafficCategory'] as Map).cast<String, dynamic>()),
    );
  }
}

