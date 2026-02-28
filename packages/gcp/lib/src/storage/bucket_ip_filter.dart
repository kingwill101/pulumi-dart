// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_ip_filter_public_network_source.dart';
import 'bucket_ip_filter_vpc_network_source.dart';

class BucketIpFilter {
  /// While set `true`, allows all service agents to access the bucket regardless of the IP filter configuration.
  final bool? allowAllServiceAgentAccess;

  /// While set `true`, allows cross-org VPCs in the bucket's IP filter configuration.
  final bool? allowCrossOrgVpcs;

  /// The state of the IP filter configuration. Valid values are `Enabled` and `Disabled`. When set to `Enabled`, IP filtering rules are applied to a bucket and all incoming requests to the bucket are evaluated against these rules. When set to `Disabled`, IP filtering rules are not applied to a bucket.
  ///
  /// **Note**: Once ip_filter is setup, it can either be `Enabled` or `Disabled` and cannot be removed from config.
  ///
  /// **Note**: `allow_all_service_agent_access` must be supplied when `mode` is set to `Enabled`, it can be ommited for other values.
  final String mode;

  /// The public network IP address ranges that can access the bucket and its data. Structure is documented below.
  final BucketIpFilterPublicNetworkSource? publicNetworkSource;

  /// The list of VPC networks that can access the bucket. Structure is documented below.
  final List<BucketIpFilterVpcNetworkSource>? vpcNetworkSources;

  /// Creates a new [BucketIpFilter].
  /// [allowAllServiceAgentAccess] While set `true`, allows all service agents to access the bucket regardless of the IP filter configuration.
  /// [allowCrossOrgVpcs] While set `true`, allows cross-org VPCs in the bucket's IP filter configuration.
  /// [mode] The state of the IP filter configuration. Valid values are `Enabled` and `Disabled`. When set to `Enabled`, IP filtering rules are applied to a bucket and all incoming requests to the bucket are evaluated against these rules. When set to `Disabled`, IP filtering rules are not applied to a bucket.
  /// [publicNetworkSource] The public network IP address ranges that can access the bucket and its data. Structure is documented below.
  /// [vpcNetworkSources] The list of VPC networks that can access the bucket. Structure is documented below.
  BucketIpFilter({
    this.allowAllServiceAgentAccess,
    this.allowCrossOrgVpcs,
    required this.mode,
    this.publicNetworkSource,
    this.vpcNetworkSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowAllServiceAgentAccessValue = allowAllServiceAgentAccess;
    if (allowAllServiceAgentAccessValue != null) {
      map['allowAllServiceAgentAccess'] = allowAllServiceAgentAccessValue;
    }
    final allowCrossOrgVpcsValue = allowCrossOrgVpcs;
    if (allowCrossOrgVpcsValue != null) {
      map['allowCrossOrgVpcs'] = allowCrossOrgVpcsValue;
    }
    map['mode'] = mode;
    final publicNetworkSourceValue = publicNetworkSource;
    if (publicNetworkSourceValue != null) {
      map['publicNetworkSource'] = publicNetworkSourceValue.toMap();
    }
    final vpcNetworkSourcesValue = vpcNetworkSources;
    if (vpcNetworkSourcesValue != null) {
      map['vpcNetworkSources'] = pulumi.Input.encodeList<
              BucketIpFilterVpcNetworkSource, Map<String, dynamic>>(
          vpcNetworkSourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory BucketIpFilter.fromMap(Map<String, dynamic> map) {
    return BucketIpFilter(
      allowAllServiceAgentAccess: map['allowAllServiceAgentAccess'] == null
          ? null
          : map['allowAllServiceAgentAccess'] as bool,
      allowCrossOrgVpcs: map['allowCrossOrgVpcs'] == null
          ? null
          : map['allowCrossOrgVpcs'] as bool,
      mode: map['mode'] as String,
      publicNetworkSource: map['publicNetworkSource'] == null
          ? null
          : BucketIpFilterPublicNetworkSource.fromMap(
              (map['publicNetworkSource'] as Map).cast<String, dynamic>()),
      vpcNetworkSources: map['vpcNetworkSources'] == null
          ? null
          : pulumi.Input.decodeList<BucketIpFilterVpcNetworkSource>(
              map['vpcNetworkSources'],
              (value) => BucketIpFilterVpcNetworkSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
