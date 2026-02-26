// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_cloud_logging_details_cloud_logging_severity.dart';

/// Cloud Logging details for execution info
class GoogleCloudIntegrationsV1alphaCloudLoggingDetails {
  /// Optional. Severity selected by the customer for the logs to be sent to Cloud Logging, for the integration version getting executed.
  final GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity?
      cloudLoggingSeverity;

  /// Optional. Status of whether Cloud Logging is enabled or not for the integration version getting executed.
  final bool? enableCloudLogging;

  GoogleCloudIntegrationsV1alphaCloudLoggingDetails({
    this.cloudLoggingSeverity,
    this.enableCloudLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudLoggingSeverityValue = cloudLoggingSeverity;
    if (cloudLoggingSeverityValue != null) {
      map['cloudLoggingSeverity'] = cloudLoggingSeverityValue.value;
    }
    final enableCloudLoggingValue = enableCloudLogging;
    if (enableCloudLoggingValue != null) {
      map['enableCloudLogging'] = enableCloudLoggingValue;
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaCloudLoggingDetails.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaCloudLoggingDetails(
      cloudLoggingSeverity: map['cloudLoggingSeverity'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity
              .fromValue(map['cloudLoggingSeverity'] as String),
      enableCloudLogging: map['enableCloudLogging'] == null
          ? null
          : map['enableCloudLogging'] as bool,
    );
  }
}
