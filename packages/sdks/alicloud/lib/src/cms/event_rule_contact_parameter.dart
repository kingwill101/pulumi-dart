// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventRuleContactParameter {
  /// The name of the alert contact group.
  final pulumi.Input<String>? contactGroupName;
  /// The ID of the recipient that receives alert notifications.
  final pulumi.Input<String>? contactParametersId;
  /// The alert level and the corresponding notification methods.
  final pulumi.Input<String>? level;

  /// Creates a new [EventRuleContactParameter].
  /// [contactGroupName] The name of the alert contact group.
  /// [contactParametersId] The ID of the recipient that receives alert notifications.
  /// [level] The alert level and the corresponding notification methods.
  EventRuleContactParameter({
    this.contactGroupName,
    this.contactParametersId,
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactGroupName': ?contactGroupName,
      'contactParametersId': ?contactParametersId,
      'level': ?level,
    };
  }

  factory EventRuleContactParameter.fromMap(Map<String, dynamic> map) {
    return EventRuleContactParameter(
      contactGroupName: (() { final guardedValue = map['contactGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactParametersId: (() { final guardedValue = map['contactParametersId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

