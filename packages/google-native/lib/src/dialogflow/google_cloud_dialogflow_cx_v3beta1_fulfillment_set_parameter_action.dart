// ignore_for_file: unused_element, unnecessary_cast

/// Setting a parameter value.
class GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction {
  /// Display name of the parameter.
  final String? parameter;

  /// The new value of the parameter. A null value clears the parameter.
  final dynamic value;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction].
  /// [parameter] Display name of the parameter.
  /// [value] The new value of the parameter. A null value clears the parameter.
  GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction({
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

  factory GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction(
      parameter: map['parameter'] == null ? null : map['parameter'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}
