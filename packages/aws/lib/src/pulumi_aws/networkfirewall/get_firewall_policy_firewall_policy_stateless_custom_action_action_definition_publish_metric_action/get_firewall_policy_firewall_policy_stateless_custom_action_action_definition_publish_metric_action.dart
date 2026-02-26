// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_firewall_policy_firewall_policy_stateless_custom_action_action_definition_publish_metric_action_dimension/get_firewall_policy_firewall_policy_stateless_custom_action_action_definition_publish_metric_action_dimension.dart';

class GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction {
  final List<
          GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension>
      dimensions;

  GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction({
    required this.dimensions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dimensions'] = Input.encodeList<
        GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    return map;
  }

  factory GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction(
      dimensions: Input.decodeList<
              GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension>(
          map['dimensions'],
          (value) =>
              GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
