// ignore_for_file: unused_element, unnecessary_cast

class CxFlowEventHandlerTriggerFulfillmentSetParameterAction {
  /// Display name of the parameter.
  final String? parameter;

  /// The new JSON-encoded value of the parameter. A null value clears the parameter.
  final String? value;

  /// Creates a new [CxFlowEventHandlerTriggerFulfillmentSetParameterAction].
  /// [parameter] Display name of the parameter.
  /// [value] The new JSON-encoded value of the parameter. A null value clears the parameter.
  CxFlowEventHandlerTriggerFulfillmentSetParameterAction({
    this.parameter,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'parameter': ?parameter, 'value': ?value};
  }

  factory CxFlowEventHandlerTriggerFulfillmentSetParameterAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxFlowEventHandlerTriggerFulfillmentSetParameterAction(
      parameter: map['parameter'] == null ? null : map['parameter'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
