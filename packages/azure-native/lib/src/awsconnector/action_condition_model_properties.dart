// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ActionConditionModelProperties
class ActionConditionModelProperties {
  /// Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
  final String? action;

  /// Creates a new [ActionConditionModelProperties].
  /// [action] Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
  ActionConditionModelProperties({
    this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
    };
  }

  factory ActionConditionModelProperties.fromMap(Map<String, dynamic> map) {
    return ActionConditionModelProperties(
      action: map['action'] == null ? null : map['action'] as String,
    );
  }
}

