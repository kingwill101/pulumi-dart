// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Logging details for execution info
class GoogleCloudIntegrationsV1alphaCloudLoggingDetailsResponse {
  /// Optional. Severity selected by the customer for the logs to be sent to Cloud Logging, for the integration version getting executed.
  final String cloudLoggingSeverity;

  /// Optional. Status of whether Cloud Logging is enabled or not for the integration version getting executed.
  final bool enableCloudLogging;

  GoogleCloudIntegrationsV1alphaCloudLoggingDetailsResponse({
    required this.cloudLoggingSeverity,
    required this.enableCloudLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudLoggingSeverity'] = cloudLoggingSeverity;
    map['enableCloudLogging'] = enableCloudLogging;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaCloudLoggingDetailsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaCloudLoggingDetailsResponse(
      cloudLoggingSeverity: map['cloudLoggingSeverity'] as String,
      enableCloudLogging: map['enableCloudLogging'] as bool,
    );
  }
}
