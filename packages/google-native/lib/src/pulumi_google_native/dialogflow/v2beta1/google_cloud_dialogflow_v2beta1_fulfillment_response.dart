// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_fulfillment_feature_response.dart';
import 'google_cloud_dialogflow_v2beta1_fulfillment_generic_web_service_response.dart';

/// By default, your agent responds to a matched intent with a static response. As an alternative, you can provide a more dynamic response by using fulfillment. When you enable fulfillment for an intent, Dialogflow responds to that intent by calling a service that you define. For example, if an end-user wants to schedule a haircut on Friday, your service can check your database and respond to the end-user with availability information for Friday. For more information, see the [fulfillment guide](https://cloud.google.com/dialogflow/docs/fulfillment-overview).
class GoogleCloudDialogflowV2beta1FulfillmentResponse {
  /// The human-readable name of the fulfillment, unique within the agent. This field is not used for Fulfillment in an Environment.
  final String displayName;

  /// Whether fulfillment is enabled.
  final bool enabled;

  /// The field defines whether the fulfillment is enabled for certain features.
  final List<GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse> features;

  /// Configuration for a generic web service.
  final GoogleCloudDialogflowV2beta1FulfillmentGenericWebServiceResponse
      genericWebService;

  /// The unique identifier of the fulfillment. Supported formats: - `projects//agent/fulfillment` - `projects//locations//agent/fulfillment` This field is not used for Fulfillment in an Environment.
  final String name;

  GoogleCloudDialogflowV2beta1FulfillmentResponse({
    required this.displayName,
    required this.enabled,
    required this.features,
    required this.genericWebService,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['enabled'] = enabled;
    map['features'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse,
        Map<String, dynamic>>(features, (value) => value.toMap());
    map['genericWebService'] = genericWebService.toMap();
    map['name'] = name;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1FulfillmentResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1FulfillmentResponse(
      displayName: map['displayName'] as String,
      enabled: map['enabled'] as bool,
      features: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse>(
          map['features'],
          (value) =>
              GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      genericWebService:
          GoogleCloudDialogflowV2beta1FulfillmentGenericWebServiceResponse
              .fromMap(
                  (map['genericWebService'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
