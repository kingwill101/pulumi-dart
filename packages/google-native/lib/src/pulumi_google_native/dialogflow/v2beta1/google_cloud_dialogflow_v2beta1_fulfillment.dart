// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_v2beta1_fulfillment_feature.dart';
import 'google_cloud_dialogflow_v2beta1_fulfillment_generic_web_service.dart';

/// By default, your agent responds to a matched intent with a static response. As an alternative, you can provide a more dynamic response by using fulfillment. When you enable fulfillment for an intent, Dialogflow responds to that intent by calling a service that you define. For example, if an end-user wants to schedule a haircut on Friday, your service can check your database and respond to the end-user with availability information for Friday. For more information, see the [fulfillment guide](https://cloud.google.com/dialogflow/docs/fulfillment-overview).
class GoogleCloudDialogflowV2beta1Fulfillment {
  /// The human-readable name of the fulfillment, unique within the agent. This field is not used for Fulfillment in an Environment.
  final String? displayName;

  /// Whether fulfillment is enabled.
  final bool? enabled;

  /// The field defines whether the fulfillment is enabled for certain features.
  final List<GoogleCloudDialogflowV2beta1FulfillmentFeature>? features;

  /// Configuration for a generic web service.
  final GoogleCloudDialogflowV2beta1FulfillmentGenericWebService?
      genericWebService;

  /// The unique identifier of the fulfillment. Supported formats: - `projects//agent/fulfillment` - `projects//locations//agent/fulfillment` This field is not used for Fulfillment in an Environment.
  final String name;

  GoogleCloudDialogflowV2beta1Fulfillment({
    this.displayName,
    this.enabled,
    this.features,
    this.genericWebService,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final featuresValue = features;
    if (featuresValue != null) {
      map['features'] = Input.encodeList<
          GoogleCloudDialogflowV2beta1FulfillmentFeature,
          Map<String, dynamic>>(featuresValue, (value) => value.toMap());
    }
    final genericWebServiceValue = genericWebService;
    if (genericWebServiceValue != null) {
      map['genericWebService'] = genericWebServiceValue.toMap();
    }
    map['name'] = name;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1Fulfillment.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1Fulfillment(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      features: map['features'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowV2beta1FulfillmentFeature>(
              map['features'],
              (value) => GoogleCloudDialogflowV2beta1FulfillmentFeature.fromMap(
                  (value as Map).cast<String, dynamic>())),
      genericWebService: map['genericWebService'] == null
          ? null
          : GoogleCloudDialogflowV2beta1FulfillmentGenericWebService.fromMap(
              (map['genericWebService'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
