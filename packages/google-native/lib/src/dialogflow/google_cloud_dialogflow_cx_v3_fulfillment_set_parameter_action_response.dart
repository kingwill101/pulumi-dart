// ignore_for_file: unused_element, unnecessary_cast

/// Setting a parameter value.
class GoogleCloudDialogflowCxV3FulfillmentSetParameterActionResponse {
  /// Display name of the parameter.
  final String parameter;

  /// The new value of the parameter. A null value clears the parameter.
  final dynamic value;

  /// Creates a new [GoogleCloudDialogflowCxV3FulfillmentSetParameterActionResponse].
  /// [parameter] Display name of the parameter.
  /// [value] The new value of the parameter. A null value clears the parameter.
  GoogleCloudDialogflowCxV3FulfillmentSetParameterActionResponse({
    required this.parameter,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'parameter': parameter, 'value': value};
  }

  factory GoogleCloudDialogflowCxV3FulfillmentSetParameterActionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3FulfillmentSetParameterActionResponse(
      parameter: map['parameter'] as String,
      value: map['value'],
    );
  }
}
