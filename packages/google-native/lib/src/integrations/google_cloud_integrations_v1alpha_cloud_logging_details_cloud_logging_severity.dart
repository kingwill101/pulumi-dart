/// Optional. Severity selected by the customer for the logs to be sent to Cloud Logging, for the integration version getting executed.
enum GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity {
  cloudLoggingSeverityUnspecified("CLOUD_LOGGING_SEVERITY_UNSPECIFIED"),
  default_("DEFAULT"),
  info("INFO"),
  error("ERROR"),
  warning("WARNING");

  const GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity(
    this.value,
  );
  final String value;

  static GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity
  fromValue(String value) {
    for (final item
        in GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity value: $value',
    );
  }
}
