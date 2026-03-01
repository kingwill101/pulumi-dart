// ignore_for_file: unused_element, unnecessary_cast

/// Setting a parameter value.
class GoogleCloudDialogflowCxV3FulfillmentSetParameterAction {
  /// Display name of the parameter.
  final String? parameter;

  /// The new value of the parameter. A null value clears the parameter.
  final dynamic value;

  /// Creates a new [GoogleCloudDialogflowCxV3FulfillmentSetParameterAction].
  /// [parameter] Display name of the parameter.
  /// [value] The new value of the parameter. A null value clears the parameter.
  GoogleCloudDialogflowCxV3FulfillmentSetParameterAction({
    this.parameter,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'parameter': ?parameter, 'value': ?value};
  }

  factory GoogleCloudDialogflowCxV3FulfillmentSetParameterAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3FulfillmentSetParameterAction(
      parameter: map['parameter'] == null ? null : map['parameter'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}
