// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_waiting_room_rule_waiting_room_rule_args_doc}
/// The set of arguments for WaitingRoomRule.
/// {@endtemplate}
/// {@macro pulumi_esa_waiting_room_rule_waiting_room_rule_args_doc}
class WaitingRoomRuleArgs {
  /// The content of the rule, the implemented policy or conditional expression.
  final pulumi.Input<String> rule;
  /// Rule name, optional, used to query by waiting room bypass rule name.
  final pulumi.Input<String> ruleName;
  /// The site ID, which can be obtained by calling the ListSites API.
  final pulumi.Input<String> siteId;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// - on: open.
  /// - off: close.
  final pulumi.Input<String> status;
  /// Waiting room ID, used to identify a specific waiting room. It can be obtained by calling the [listwaitingroom](https://help.aliyun.com/document_detail/2850279.html) interface.
  final pulumi.Input<String> waitingRoomId;

  /// Creates a new [WaitingRoomRuleArgs].
  /// [rule] The content of the rule, the implemented policy or conditional expression.
  /// [ruleName] Rule name, optional, used to query by waiting room bypass rule name.
  /// [siteId] The site ID, which can be obtained by calling the ListSites API.
  /// [status] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [waitingRoomId] Waiting room ID, used to identify a specific waiting room. It can be obtained by calling the [listwaitingroom](https://help.aliyun.com/document_detail/2850279.html) interface.
  WaitingRoomRuleArgs({
    required this.rule,
    required this.ruleName,
    required this.siteId,
    required this.status,
    required this.waitingRoomId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rule': rule,
      'ruleName': ruleName,
      'siteId': siteId,
      'status': status,
      'waitingRoomId': waitingRoomId,
    };
  }

  factory WaitingRoomRuleArgs.fromMap(Map<String, dynamic> map) {
    return WaitingRoomRuleArgs(
      rule: (map['rule'] as String).input(),
      ruleName: (map['ruleName'] as String).input(),
      siteId: (map['siteId'] as String).input(),
      status: (map['status'] as String).input(),
      waitingRoomId: (map['waitingRoomId'] as String).input(),
    );
  }
}

