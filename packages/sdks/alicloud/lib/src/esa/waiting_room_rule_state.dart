// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WaitingRoomRule resources.
class WaitingRoomRuleState {
  /// The content of the rule, the implemented policy or conditional expression.
  final pulumi.Input<String>? rule;
  /// Rule name, optional, used to query by waiting room bypass rule name.
  final pulumi.Input<String>? ruleName;
  /// The site ID, which can be obtained by calling the ListSites API.
  final pulumi.Input<String>? siteId;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// - on: open.
  /// - off: close.
  final pulumi.Input<String>? status;
  /// Waiting room ID, used to identify a specific waiting room. It can be obtained by calling the [listwaitingroom](https://help.aliyun.com/document_detail/2850279.html) interface.
  final pulumi.Input<String>? waitingRoomId;
  /// The rule ID, which can be used to query a specific rule.
  final pulumi.Input<int>? waitingRoomRuleId;

  /// Creates a new [WaitingRoomRuleState].
  /// [rule] The content of the rule, the implemented policy or conditional expression.
  /// [ruleName] Rule name, optional, used to query by waiting room bypass rule name.
  /// [siteId] The site ID, which can be obtained by calling the ListSites API.
  /// [status] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [waitingRoomId] Waiting room ID, used to identify a specific waiting room. It can be obtained by calling the [listwaitingroom](https://help.aliyun.com/document_detail/2850279.html) interface.
  /// [waitingRoomRuleId] The rule ID, which can be used to query a specific rule.
  WaitingRoomRuleState({
    pulumi.Output<String>? rule,
    pulumi.Output<String>? ruleName,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? waitingRoomId,
    pulumi.Output<int>? waitingRoomRuleId,
  }) :
      rule = pulumi.Input.asOptionalInput<String>(rule),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      status = pulumi.Input.asOptionalInput<String>(status),
      waitingRoomId = pulumi.Input.asOptionalInput<String>(waitingRoomId),
      waitingRoomRuleId = pulumi.Input.asOptionalInput<int>(waitingRoomRuleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rule': ?rule,
      'ruleName': ?ruleName,
      'siteId': ?siteId,
      'status': ?status,
      'waitingRoomId': ?waitingRoomId,
      'waitingRoomRuleId': ?waitingRoomRuleId,
    };
  }

  factory WaitingRoomRuleState.fromMap(Map<String, dynamic> map) {
    return WaitingRoomRuleState(
      rule: map['rule'] == null ? null : pulumi.Output.create<String>(map['rule'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      waitingRoomId: map['waitingRoomId'] == null ? null : pulumi.Output.create<String>(map['waitingRoomId'] as String),
      waitingRoomRuleId: map['waitingRoomRuleId'] == null ? null : pulumi.Output.create<int>(map['waitingRoomRuleId'] as int),
    );
  }
}

