// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dimension_network_firewall_rule_group_response.dart';

/// Definition of PublishMetricAction
class PublishMetricActionNetworkFirewallRuleGroupResponse {
  /// Property dimensions
  final pulumi.Input<List<DimensionNetworkFirewallRuleGroupResponse>>? dimensions;

  /// Creates a new [PublishMetricActionNetworkFirewallRuleGroupResponse].
  /// [dimensions] Property dimensions
  const PublishMetricActionNetworkFirewallRuleGroupResponse({
    this.dimensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<DimensionNetworkFirewallRuleGroupResponse>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<DimensionNetworkFirewallRuleGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PublishMetricActionNetworkFirewallRuleGroupResponse.fromMap(Map<String, dynamic> map) {
    return PublishMetricActionNetworkFirewallRuleGroupResponse(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DimensionNetworkFirewallRuleGroupResponse>(guardedValue, (value) => DimensionNetworkFirewallRuleGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
