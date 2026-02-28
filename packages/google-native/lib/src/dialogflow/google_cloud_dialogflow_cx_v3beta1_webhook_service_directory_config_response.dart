// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_webhook_generic_web_service_response.dart';

/// Represents configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
class GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfigResponse {
  /// Generic Service configuration of this webhook.
  final GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceResponse genericWebService;
  /// The name of [Service Directory](https://cloud.google.com/service-directory) service. Format: `projects//locations//namespaces//services/`. `Location ID` of the service directory must be the same as the location of the agent.
  final String service;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfigResponse].
  /// [genericWebService] Generic Service configuration of this webhook.
  /// [service] The name of [Service Directory](https://cloud.google.com/service-directory) service. Format: `projects//locations//namespaces//services/`. `Location ID` of the service directory must be the same as the location of the agent.
  GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfigResponse({
    required this.genericWebService,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericWebService': genericWebService.toMap(),
      'service': service,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfigResponse(
      genericWebService: GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceResponse.fromMap((map['genericWebService'] as Map).cast<String, dynamic>()),
      service: map['service'] as String,
    );
  }
}

