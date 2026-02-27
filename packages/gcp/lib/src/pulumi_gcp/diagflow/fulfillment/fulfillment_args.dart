// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../fulfillment_feature/fulfillment_feature.dart';
import '../fulfillment_generic_web_service/fulfillment_generic_web_service.dart';

/// The set of arguments for Fulfillment.
class FulfillmentArgs {
  /// The human-readable name of the fulfillment, unique within the agent.
  final pulumi.Input<String> displayName;

  /// Whether fulfillment is enabled.
  final pulumi.Input<bool>? enabled;

  /// The field defines whether the fulfillment is enabled for certain features.
  /// Structure is documented below.
  final pulumi.Input<List<FulfillmentFeature>>? features;

  /// Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers.
  /// Structure is documented below.
  final pulumi.Input<FulfillmentGenericWebService>? genericWebService;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  FulfillmentArgs({
    required this.displayName,
    this.enabled,
    this.features,
    this.genericWebService,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final featuresValue = features;
    if (featuresValue != null) {
      map['features'] = pulumi.Input.mapOptionalInputValue<
              List<FulfillmentFeature>, List<Map<String, dynamic>>>(
          featuresValue,
          (value) =>
              pulumi.Input.encodeList<FulfillmentFeature, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final genericWebServiceValue = genericWebService;
    if (genericWebServiceValue != null) {
      map['genericWebService'] = pulumi.Input.mapOptionalInputValue<
              FulfillmentGenericWebService, Map<String, dynamic>>(
          genericWebServiceValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory FulfillmentArgs.fromMap(Map<String, dynamic> map) {
    return FulfillmentArgs(
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      features: pulumi.Input.asOptionalInput<List<FulfillmentFeature>>(
          map['features']),
      genericWebService:
          pulumi.Input.asOptionalInput<FulfillmentGenericWebService>(
              map['genericWebService']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
