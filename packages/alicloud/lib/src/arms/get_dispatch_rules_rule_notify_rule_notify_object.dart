// ignore_for_file: unused_element, unnecessary_cast


class GetDispatchRulesRuleNotifyRuleNotifyObject {
  /// The name of the contact or contact group.
  final String name;
  /// The ID of the contact or contact group.
  final String notifyObjectId;
  /// The type of the alert contact.
  final String notifyType;

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
      name: map['name'] as String,
      notifyObjectId: map['notifyObjectId'] as String,
      notifyType: map['notifyType'] as String,
    );
  }
}

