// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_cloud_logging_details_cloud_logging_severity.dart';

/// Cloud Logging details for execution info
class GoogleCloudIntegrationsV1alphaCloudLoggingDetails {
  /// Optional. Severity selected by the customer for the logs to be sent to Cloud Logging, for the integration version getting executed.
  final GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity? cloudLoggingSeverity;
  /// Optional. Status of whether Cloud Logging is enabled or not for the integration version getting executed.
  final bool? enableCloudLogging;

  /// Creates a new [GoogleCloudIntegrationsV1alphaCloudLoggingDetails].
  /// [cloudLoggingSeverity] Optional. Severity selected by the customer for the logs to be sent to Cloud Logging, for the integration version getting executed.
  /// [enableCloudLogging] Optional. Status of whether Cloud Logging is enabled or not for the integration version getting executed.
  GoogleCloudIntegrationsV1alphaCloudLoggingDetails({
    this.cloudLoggingSeverity,
    this.enableCloudLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudLoggingSeverity': ?cloudLoggingSeverity == null ? null : cloudLoggingSeverity!.value,
      'enableCloudLogging': ?enableCloudLogging,
    };
  }

  factory GoogleCloudIntegrationsV1alphaCloudLoggingDetails.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaCloudLoggingDetails(
      cloudLoggingSeverity: map['cloudLoggingSeverity'] == null ? null : GoogleCloudIntegrationsV1alphaCloudLoggingDetailsCloudLoggingSeverity.fromValue(map['cloudLoggingSeverity'] as String),
      enableCloudLogging: map['enableCloudLogging'] == null ? null : map['enableCloudLogging'] as bool,
    );
  }
}

