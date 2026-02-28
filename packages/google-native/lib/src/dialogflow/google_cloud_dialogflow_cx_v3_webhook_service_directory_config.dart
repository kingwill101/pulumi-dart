// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_webhook_generic_web_service.dart';

/// Represents configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
class GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig {
  /// Generic Service configuration of this webhook.
  final GoogleCloudDialogflowCxV3WebhookGenericWebService? genericWebService;
  /// The name of [Service Directory](https://cloud.google.com/service-directory) service. Format: `projects//locations//namespaces//services/`. `Location ID` of the service directory must be the same as the location of the agent.
  final String service;

  /// Creates a new [GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig].
  /// [genericWebService] Generic Service configuration of this webhook.
  /// [service] The name of [Service Directory](https://cloud.google.com/service-directory) service. Format: `projects//locations//namespaces//services/`. `Location ID` of the service directory must be the same as the location of the agent.
  GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig({
    this.genericWebService,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericWebService': ?genericWebService == null ? null : genericWebService!.toMap(),
      'service': service,
    };
  }

  factory GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig(
      genericWebService: map['genericWebService'] == null ? null : GoogleCloudDialogflowCxV3WebhookGenericWebService.fromMap((map['genericWebService'] as Map).cast<String, dynamic>()),
      service: map['service'] as String,
    );
  }
}

