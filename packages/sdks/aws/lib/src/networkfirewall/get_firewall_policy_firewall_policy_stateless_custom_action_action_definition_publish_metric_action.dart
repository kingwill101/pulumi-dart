// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy_stateless_custom_action_action_definition_publish_metric_action_dimension.dart';

class GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction {
  final pulumi.Input<List<GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension>> dimensions;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction].
  /// [dimensions] Required.
  GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction({
    required this.dimensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': pulumi.Input.mapInputValue<List<GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction(
      dimensions: (pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension>(map['dimensions'], (value) => GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

