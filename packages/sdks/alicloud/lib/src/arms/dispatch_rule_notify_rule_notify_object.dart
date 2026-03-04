// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DispatchRuleNotifyRuleNotifyObject {
  /// The name of the contact or contact group.
  final pulumi.Input<String> name;

  /// The ID of the contact or contact group.
  final pulumi.Input<String> notifyObjectId;

  /// The type of the alert contact. Valid values: ARMS_ROBOT: robot. ARMS_CONTACT: contact. ARMS_CONTACT_GROUP: contact group.
  final pulumi.Input<String> notifyType;

  /// Creates a new [DispatchRuleNotifyRuleNotifyObject].
  /// [name] The name of the contact or contact group.
  /// [notifyObjectId] The ID of the contact or contact group.
  /// [notifyType] The type of the alert contact. Valid values: ARMS_ROBOT: robot. ARMS_CONTACT: contact. ARMS_CONTACT_GROUP: contact group.
  DispatchRuleNotifyRuleNotifyObject({
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

  factory DispatchRuleNotifyRuleNotifyObject.fromMap(Map<String, dynamic> map) {
    return DispatchRuleNotifyRuleNotifyObject(
      name: pulumi.Input.fromValue(map['name'] as String),
      notifyObjectId: pulumi.Input.fromValue(map['notifyObjectId'] as String),
      notifyType: pulumi.Input.fromValue(map['notifyType'] as String),
    );
  }
}
