// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_firewall_policy_stateless_custom_action_action_definition_publish_metric_action_dimension.dart';

class FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction {
  /// Set of configuration blocks describing dimension settings to use for Amazon CloudWatch custom metrics. See Dimension below for more details.
  final pulumi.Input<List<FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension>> dimensions;

  /// Creates a new [FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction].
  /// [dimensions] Set of configuration blocks describing dimension settings to use for Amazon CloudWatch custom metrics. See Dimension below for more details.
  FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction({
    required this.dimensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': pulumi.Input.mapInputValue<List<FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction(
      dimensions: pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension>(map['dimensions']!, (value) => FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

