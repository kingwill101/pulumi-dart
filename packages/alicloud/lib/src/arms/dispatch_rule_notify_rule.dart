// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dispatch_rule_notify_rule_notify_object.dart';

class DispatchRuleNotifyRule {
  /// The notification method. Valid values: dingTalk, sms, webhook, email, and wechat.
  final List<String> notifyChannels;
  /// End time of notification.
  final String notifyEndTime;
  /// Sets the notification object. See `notify_objects` below.
  final List<DispatchRuleNotifyRuleNotifyObject> notifyObjects;
  /// Start time of notification.
  final String notifyStartTime;

  /// Creates a new [DispatchRuleNotifyRule].
  /// [notifyChannels] The notification method. Valid values: dingTalk, sms, webhook, email, and wechat.
  /// [notifyEndTime] End time of notification.
  /// [notifyObjects] Sets the notification object. See `notify_objects` below.
  /// [notifyStartTime] Start time of notification.
  DispatchRuleNotifyRule({
    required this.notifyChannels,
    required this.notifyEndTime,
    required this.notifyObjects,
    required this.notifyStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notifyChannels': notifyChannels,
      'notifyEndTime': notifyEndTime,
      'notifyObjects': pulumi.Input.encodeList<DispatchRuleNotifyRuleNotifyObject, Map<String, dynamic>>(notifyObjects, (value) => value.toMap()),
      'notifyStartTime': notifyStartTime,
    };
  }

  factory DispatchRuleNotifyRule.fromMap(Map<String, dynamic> map) {
    return DispatchRuleNotifyRule(
      notifyChannels: (map['notifyChannels'] as List).cast<String>(),
      notifyEndTime: map['notifyEndTime'] as String,
      notifyObjects: pulumi.Input.decodeList<DispatchRuleNotifyRuleNotifyObject>(map['notifyObjects'], (value) => DispatchRuleNotifyRuleNotifyObject.fromMap((value as Map).cast<String, dynamic>())),
      notifyStartTime: map['notifyStartTime'] as String,
    );
  }
}

