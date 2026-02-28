// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_fulfillment_feature.dart';
import 'google_cloud_dialogflow_v2_fulfillment_generic_web_service.dart';

/// By default, your agent responds to a matched intent with a static response. As an alternative, you can provide a more dynamic response by using fulfillment. When you enable fulfillment for an intent, Dialogflow responds to that intent by calling a service that you define. For example, if an end-user wants to schedule a haircut on Friday, your service can check your database and respond to the end-user with availability information for Friday. For more information, see the [fulfillment guide](https://cloud.google.com/dialogflow/docs/fulfillment-overview).
class GoogleCloudDialogflowV2Fulfillment {
  /// Optional. The human-readable name of the fulfillment, unique within the agent. This field is not used for Fulfillment in an Environment.
  final String? displayName;

  /// Optional. Whether fulfillment is enabled.
  final bool? enabled;

  /// Optional. The field defines whether the fulfillment is enabled for certain features.
  final List<GoogleCloudDialogflowV2FulfillmentFeature>? features;

  /// Configuration for a generic web service.
  final GoogleCloudDialogflowV2FulfillmentGenericWebService? genericWebService;

  /// The unique identifier of the fulfillment. Supported formats: - `projects//agent/fulfillment` - `projects//locations//agent/fulfillment` This field is not used for Fulfillment in an Environment.
  final String name;

  /// Creates a new [GoogleCloudDialogflowV2Fulfillment].
  /// [displayName] Optional. The human-readable name of the fulfillment, unique within the agent. This field is not used for Fulfillment in an Environment.
  /// [enabled] Optional. Whether fulfillment is enabled.
  /// [features] Optional. The field defines whether the fulfillment is enabled for certain features.
  /// [genericWebService] Configuration for a generic web service.
  /// [name] The unique identifier of the fulfillment. Supported formats: - `projects//agent/fulfillment` - `projects//locations//agent/fulfillment` This field is not used for Fulfillment in an Environment.
  GoogleCloudDialogflowV2Fulfillment({
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
      map['features'] = pulumi.Input.encodeList<
          GoogleCloudDialogflowV2FulfillmentFeature,
          Map<String, dynamic>>(featuresValue, (value) => value.toMap());
    }
    final genericWebServiceValue = genericWebService;
    if (genericWebServiceValue != null) {
      map['genericWebService'] = genericWebServiceValue.toMap();
    }
    map['name'] = name;
    return map;
  }

  factory GoogleCloudDialogflowV2Fulfillment.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2Fulfillment(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      features: map['features'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDialogflowV2FulfillmentFeature>(
              map['features'],
              (value) => GoogleCloudDialogflowV2FulfillmentFeature.fromMap(
                  (value as Map).cast<String, dynamic>())),
      genericWebService: map['genericWebService'] == null
          ? null
          : GoogleCloudDialogflowV2FulfillmentGenericWebService.fromMap(
              (map['genericWebService'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
