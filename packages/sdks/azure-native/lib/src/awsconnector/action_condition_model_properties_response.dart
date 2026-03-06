// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ActionConditionModelProperties
class ActionConditionModelPropertiesResponse {
  /// Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
  final pulumi.Input<String>? action;

  /// Creates a new [ActionConditionModelPropertiesResponse].
  /// [action] Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
  const ActionConditionModelPropertiesResponse({
    this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
    };
  }

  factory ActionConditionModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ActionConditionModelPropertiesResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

