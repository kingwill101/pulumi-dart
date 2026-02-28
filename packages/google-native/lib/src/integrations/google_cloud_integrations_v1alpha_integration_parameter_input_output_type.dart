/// Specifies the input/output type for the parameter.
enum GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType {
  inOutTypeUnspecified("IN_OUT_TYPE_UNSPECIFIED"),
  in_("IN"),
  out("OUT"),
  inOut("IN_OUT");

  const GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType(this.value);
  final String value;

  static GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType value: $value');
  }
}

