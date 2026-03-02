// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleTarget {
  /// The endpoint.
  final pulumi.Input<String> endpoint;
  /// The id of target.
  final pulumi.Input<String> targetId;
  /// The type of target.
  final pulumi.Input<String> type;

  /// Creates a new [GetRulesRuleTarget].
  /// [endpoint] The endpoint.
  /// [targetId] The id of target.
  /// [type] The type of target.
  GetRulesRuleTarget({
    required this.endpoint,
    required this.targetId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'targetId': targetId,
      'type': type,
    };
  }

  factory GetRulesRuleTarget.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleTarget(
      endpoint: (map['endpoint'] as String).input(),
      targetId: (map['targetId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

