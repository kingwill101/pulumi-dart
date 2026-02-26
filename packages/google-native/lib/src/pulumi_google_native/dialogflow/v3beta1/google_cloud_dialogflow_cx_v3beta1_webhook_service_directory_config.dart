// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_webhook_generic_web_service.dart';

/// Represents configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
class GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig {
  /// Generic Service configuration of this webhook.
  final GoogleCloudDialogflowCxV3beta1WebhookGenericWebService?
      genericWebService;

  /// The name of [Service Directory](https://cloud.google.com/service-directory) service. Format: `projects//locations//namespaces//services/`. `Location ID` of the service directory must be the same as the location of the agent.
  final String service;

  GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig({
    this.genericWebService,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final genericWebServiceValue = genericWebService;
    if (genericWebServiceValue != null) {
      map['genericWebService'] = genericWebServiceValue.toMap();
    }
    map['service'] = service;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig(
      genericWebService: map['genericWebService'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1WebhookGenericWebService.fromMap(
              (map['genericWebService'] as Map).cast<String, dynamic>()),
      service: map['service'] as String,
    );
  }
}
