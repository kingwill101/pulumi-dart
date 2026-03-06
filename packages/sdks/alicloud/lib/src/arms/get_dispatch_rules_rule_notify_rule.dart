// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dispatch_rules_rule_notify_rule_notify_object.dart';

class GetDispatchRulesRuleNotifyRule {
  /// A list of notification methods.
  final pulumi.Input<List<String>> notifyChannels;
  /// (Available since v1.237.0) End time of notification.
  final pulumi.Input<String> notifyEndTime;
  /// Sets the notification object.
  final pulumi.Input<List<GetDispatchRulesRuleNotifyRuleNotifyObject>> notifyObjects;
  /// (Available since v1.237.0) Start time of notification.
  final pulumi.Input<String> notifyStartTime;

  /// Creates a new [GetDispatchRulesRuleNotifyRule].
  /// [notifyChannels] A list of notification methods.
  /// [notifyEndTime] (Available since v1.237.0) End time of notification.
  /// [notifyObjects] Sets the notification object.
  /// [notifyStartTime] (Available since v1.237.0) Start time of notification.
  const GetDispatchRulesRuleNotifyRule({
    required this.notifyChannels,
    required this.notifyEndTime,
    required this.notifyObjects,
    required this.notifyStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notifyChannels': notifyChannels,
      'notifyEndTime': notifyEndTime,
      'notifyObjects': pulumi.Input.mapInputValue<List<GetDispatchRulesRuleNotifyRuleNotifyObject>, List<Map<String, dynamic>>>(notifyObjects, (value) => pulumi.Input.encodeList<GetDispatchRulesRuleNotifyRuleNotifyObject, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notifyStartTime': notifyStartTime,
    };
  }

  factory GetDispatchRulesRuleNotifyRule.fromMap(Map<String, dynamic> map) {
    return GetDispatchRulesRuleNotifyRule(
      notifyChannels: pulumi.Input.fromValue((map['notifyChannels'] as List).cast<String>()),
      notifyEndTime: pulumi.Input.fromValue(map['notifyEndTime'] as String),
      notifyObjects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDispatchRulesRuleNotifyRuleNotifyObject>(map['notifyObjects']!, (value) => GetDispatchRulesRuleNotifyRuleNotifyObject.fromMap((value as Map).cast<String, dynamic>()))),
      notifyStartTime: pulumi.Input.fromValue(map['notifyStartTime'] as String),
    );
  }
}

