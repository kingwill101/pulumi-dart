// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dimension_network_firewall_firewall_policy_response.dart';

/// Definition of PublishMetricAction
class PublishMetricActionResponse {
  /// Property dimensions
  final pulumi.Input<List<DimensionNetworkFirewallFirewallPolicyResponse>>? dimensions;

  /// Creates a new [PublishMetricActionResponse].
  /// [dimensions] Property dimensions
  const PublishMetricActionResponse({
    this.dimensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<DimensionNetworkFirewallFirewallPolicyResponse>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<DimensionNetworkFirewallFirewallPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PublishMetricActionResponse.fromMap(Map<String, dynamic> map) {
    return PublishMetricActionResponse(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DimensionNetworkFirewallFirewallPolicyResponse>(guardedValue, (value) => DimensionNetworkFirewallFirewallPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
