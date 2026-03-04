// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_rule_rule_action_forward_group_config_server_group_tuple.dart';

class ForwardingRuleRuleActionForwardGroupConfig {
  /// The information about the endpoint group. See `server_group_tuples` below.
  final pulumi.Input<
    List<ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple>
  >
  serverGroupTuples;

  /// Creates a new [ForwardingRuleRuleActionForwardGroupConfig].
  /// [serverGroupTuples] The information about the endpoint group. See `server_group_tuples` below.
  ForwardingRuleRuleActionForwardGroupConfig({required this.serverGroupTuples});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupTuples':
          pulumi.Input.mapInputValue<
            List<ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple>,
            List<Map<String, dynamic>>
          >(
            serverGroupTuples,
            (value) =>
                pulumi.Input.encodeList<
                  ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ForwardingRuleRuleActionForwardGroupConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ForwardingRuleRuleActionForwardGroupConfig(
      serverGroupTuples: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple
        >(
          map['serverGroupTuples']!,
          (value) =>
              ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
