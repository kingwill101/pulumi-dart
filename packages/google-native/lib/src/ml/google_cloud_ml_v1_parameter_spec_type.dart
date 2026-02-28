/// Required. The type of the parameter.
enum GoogleCloudMlV1ParameterSpecType {
  parameterTypeUnspecified("PARAMETER_TYPE_UNSPECIFIED"),
  double("DOUBLE"),
  integer("INTEGER"),
  categorical("CATEGORICAL"),
  discrete("DISCRETE");

  const GoogleCloudMlV1ParameterSpecType(this.value);
  final String value;

  static GoogleCloudMlV1ParameterSpecType fromValue(String value) {
    for (final item in GoogleCloudMlV1ParameterSpecType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1ParameterSpecType value: $value');
  }
}

