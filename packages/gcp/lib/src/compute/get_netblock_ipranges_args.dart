// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_netblock_ipranges_get_netblock_ipranges_args_doc}
/// Arguments for getNetblockIPRanges.
/// {@endtemplate}
/// {@macro pulumi_compute_get_netblock_ipranges_get_netblock_ipranges_args_doc}
class GetNetblockIPRangesArgs {
  /// The type of range for which to provide results.
  ///
  /// Defaults to `cloud-netblocks`. The following `range_type`s are supported:
  ///
  /// * `cloud-netblocks` - Corresponds to the IP addresses used for resources on Google Cloud Platform. [More details.](https://cloud.google.com/compute/docs/faq#where_can_i_find_product_name_short_ip_ranges)
  ///
  /// * `google-netblocks` - Corresponds to IP addresses used for Google services. [More details.](https://cloud.google.com/compute/docs/faq#where_can_i_find_product_name_short_ip_ranges)
  ///
  /// * `restricted-googleapis` - Corresponds to the IP addresses used for Private Google Access only for services that support VPC Service Controls API access. These ranges are for DNS configuration. [More details.](https://cloud.google.com/vpc/docs/configure-private-google-access#config-options)
  ///
  /// * `restricted-googleapis-with-directconnectivity` - Corresponds to the IP addresses used for Private Google Access only for services that support VPC Service Controls API access. These ranges are for routing and firewall configurations. [More details.](https://cloud.google.com/vpc/docs/configure-private-google-access#config-options)
  ///
  /// * `private-googleapis` - Corresponds to the IP addresses used for Private Google Access, including services that do not support VPC Service Controls. These ranges are for DNS configuration. [More details.](https://cloud.google.com/vpc/docs/configure-private-google-access#config-options)
  ///
  /// * `private-googleapis-with-directconnectivity` - Corresponds to the IP addresses used for Private Google Access, including services that do not support VPC Service Controls. These ranges are for routing and firewall configurations. [More details.](https://cloud.google.com/vpc/docs/configure-private-google-access#config-options)
  ///
  /// * `dns-forwarders` - Corresponds to the IP addresses used to originate Cloud DNS outbound forwarding. [More details.](https://cloud.google.com/dns/zones/#creating-forwarding-zones)
  ///
  /// * `iap-forwarders` - Corresponds to the IP addresses used for Cloud IAP for TCP forwarding. [More details.](https://cloud.google.com/iap/docs/using-tcp-forwarding)
  ///
  /// * `health-checkers` - Corresponds to the IP addresses used for health checking in Cloud Load Balancing. [More details.](https://cloud.google.com/load-balancing/docs/health-checks)
  ///
  /// * `legacy-health-checkers` - Corresponds to the IP addresses used for legacy style health checkers (used by Network Load Balancing). [More details.](https://cloud.google.com/load-balancing/docs/health-checks)
  final pulumi.Input<String>? rangeType;

  /// Creates a new [GetNetblockIPRangesArgs].
  /// [rangeType] The type of range for which to provide results.
  GetNetblockIPRangesArgs({
    String? rangeType,
  }) : rangeType = pulumi.Input.asOptionalInput<String>(rangeType);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rangeTypeValue = rangeType;
    if (rangeTypeValue != null) {
      map['rangeType'] = rangeTypeValue;
    }
    return map;
  }

  factory GetNetblockIPRangesArgs.fromMap(Map<String, dynamic> map) {
    return GetNetblockIPRangesArgs(
      rangeType: map['rangeType'] == null ? null : map['rangeType'] as String,
    );
  }
}
