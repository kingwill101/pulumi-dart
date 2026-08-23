// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule_response.dart';

/// The network rule set for a container registry.
class NetworkRuleSetResponse {
  /// The default action of allow or deny when no other rules match.
  final pulumi.Input<String> defaultAction;
  /// The IP ACL rules.
  final pulumi.Input<List<IPRuleResponse>>? ipRules;

  /// Creates a new [NetworkRuleSetResponse].
  /// [defaultAction] The default action of allow or deny when no other rules match.
  /// [ipRules] The IP ACL rules.
  const NetworkRuleSetResponse({
    required this.defaultAction,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': defaultAction,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IPRuleResponse>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IPRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetResponse(
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPRuleResponse>(guardedValue, (value) => IPRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
