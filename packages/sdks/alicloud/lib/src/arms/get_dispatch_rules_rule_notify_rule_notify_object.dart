// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDispatchRulesRuleNotifyRuleNotifyObject {
  /// The name of the contact or contact group.
  final pulumi.Input<String> name;
  /// The ID of the contact or contact group.
  final pulumi.Input<String> notifyObjectId;
  /// The type of the alert contact.
  final pulumi.Input<String> notifyType;

  /// Creates a new [GetDispatchRulesRuleNotifyRuleNotifyObject].
  /// [name] The name of the contact or contact group.
  /// [notifyObjectId] The ID of the contact or contact group.
  /// [notifyType] The type of the alert contact.
  GetDispatchRulesRuleNotifyRuleNotifyObject({
    required this.name,
    required this.notifyObjectId,
    required this.notifyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'notifyObjectId': notifyObjectId,
      'notifyType': notifyType,
    };
  }

  factory GetDispatchRulesRuleNotifyRuleNotifyObject.fromMap(Map<String, dynamic> map) {
    return GetDispatchRulesRuleNotifyRuleNotifyObject(
      name: (map['name'] as String).input(),
      notifyObjectId: (map['notifyObjectId'] as String).input(),
      notifyType: (map['notifyType'] as String).input(),
    );
  }
}

