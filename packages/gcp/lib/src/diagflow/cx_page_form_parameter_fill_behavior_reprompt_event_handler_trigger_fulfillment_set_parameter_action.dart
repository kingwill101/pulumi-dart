// ignore_for_file: unused_element, unnecessary_cast

class CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterAction {
  /// Display name of the parameter.
  final String? parameter;

  /// The new JSON-encoded value of the parameter. A null value clears the parameter.
  final String? value;

  /// Creates a new [CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterAction].
  /// [parameter] Display name of the parameter.
  /// [value] The new JSON-encoded value of the parameter. A null value clears the parameter.
  CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterAction({
    this.parameter,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parameterValue = parameter;
    if (parameterValue != null) {
      map['parameter'] = parameterValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterAction.fromMap(
      Map<String, dynamic> map) {
    return CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentSetParameterAction(
      parameter: map['parameter'] == null ? null : map['parameter'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
