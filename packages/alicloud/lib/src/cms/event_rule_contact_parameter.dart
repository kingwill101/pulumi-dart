// ignore_for_file: unused_element, unnecessary_cast


class EventRuleContactParameter {
  /// The name of the alert contact group.
  final String? contactGroupName;
  /// The ID of the recipient that receives alert notifications.
  final String? contactParametersId;
  /// The alert level and the corresponding notification methods.
  final String? level;

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
      contactGroupName: map['contactGroupName'] == null ? null : map['contactGroupName'] as String,
      contactParametersId: map['contactParametersId'] == null ? null : map['contactParametersId'] as String,
      level: map['level'] == null ? null : map['level'] as String,
    );
  }
}

