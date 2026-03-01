// ignore_for_file: unused_element, unnecessary_cast


class LinkedAccessCheck {
  /// The action name.
  final String? actionName;
  /// The linked action.
  final String? linkedAction;
  /// The linked action verb.
  final String? linkedActionVerb;
  /// The linked property.
  final String? linkedProperty;
  /// The linked type.
  final String? linkedType;

  /// Creates a new [LinkedAccessCheck].
  /// [actionName] The action name.
  /// [linkedAction] The linked action.
  /// [linkedActionVerb] The linked action verb.
  /// [linkedProperty] The linked property.
  /// [linkedType] The linked type.
  LinkedAccessCheck({
    this.actionName,
    this.linkedAction,
    this.linkedActionVerb,
    this.linkedProperty,
    this.linkedType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': ?actionName,
      'linkedAction': ?linkedAction,
      'linkedActionVerb': ?linkedActionVerb,
      'linkedProperty': ?linkedProperty,
      'linkedType': ?linkedType,
    };
  }

  factory LinkedAccessCheck.fromMap(Map<String, dynamic> map) {
    return LinkedAccessCheck(
      actionName: map['actionName'] == null ? null : map['actionName'] as String,
      linkedAction: map['linkedAction'] == null ? null : map['linkedAction'] as String,
      linkedActionVerb: map['linkedActionVerb'] == null ? null : map['linkedActionVerb'] as String,
      linkedProperty: map['linkedProperty'] == null ? null : map['linkedProperty'] as String,
      linkedType: map['linkedType'] == null ? null : map['linkedType'] as String,
    );
  }
}

