// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_firewall_policy_stateless_custom_action_action_definition_publish_metric_action.dart';

class FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition {
  /// A configuration block describing the stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the matching packet. You can pair this custom action with any of the standard stateless rule actions. See Publish Metric Action below for details.
  final pulumi.Input<
    FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction
  >
  publishMetricAction;

  /// Creates a new [FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition].
  /// [publishMetricAction] A configuration block describing the stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the matching packet. You can pair this custom action with any of the standard stateless rule actions. See Publish Metric Action below for details.
  FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition({
    required this.publishMetricAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishMetricAction':
          pulumi.Input.mapInputValue<
            FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction,
            Map<String, dynamic>
          >(publishMetricAction, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition(
      publishMetricAction: pulumi.Input.fromValue(
        FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction.fromMap(
          (map['publishMetricAction']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
