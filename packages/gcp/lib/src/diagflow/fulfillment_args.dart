// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fulfillment_feature.dart';
import 'fulfillment_generic_web_service.dart';

/// {@template pulumi_diagflow_fulfillment_fulfillment_args_doc}
/// The set of arguments for Fulfillment.
/// {@endtemplate}
/// {@macro pulumi_diagflow_fulfillment_fulfillment_args_doc}
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

  /// Creates a new [FulfillmentArgs].
  /// [displayName] The human-readable name of the fulfillment, unique within the agent.
  /// [enabled] Whether fulfillment is enabled.
  /// [features] The field defines whether the fulfillment is enabled for certain features.
  /// [genericWebService] Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers.
  /// [project] The ID of the project in which the resource belongs.
  FulfillmentArgs({
    required String displayName,
    bool? enabled,
    List<FulfillmentFeature>? features,
    FulfillmentGenericWebService? genericWebService,
    String? project,
  }) : displayName = pulumi.Input.asInput<String>(displayName),
       enabled = pulumi.Input.asOptionalInput<bool>(enabled),
       features = pulumi.Input.asOptionalInput<List<FulfillmentFeature>>(
         features,
       ),
       genericWebService =
           pulumi.Input.asOptionalInput<FulfillmentGenericWebService>(
             genericWebService,
           ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'enabled': ?enabled,
      'features':
          ?pulumi.Input.mapOptionalInputValue<
            List<FulfillmentFeature>,
            List<Map<String, dynamic>>
          >(
            features,
            (value) =>
                pulumi.Input.encodeList<
                  FulfillmentFeature,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'genericWebService':
          ?pulumi.Input.mapOptionalInputValue<
            FulfillmentGenericWebService,
            Map<String, dynamic>
          >(genericWebService, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory FulfillmentArgs.fromMap(Map<String, dynamic> map) {
    return FulfillmentArgs(
      displayName: map['displayName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      features: map['features'] == null
          ? null
          : pulumi.Input.decodeList<FulfillmentFeature>(
              map['features'],
              (value) => FulfillmentFeature.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      genericWebService: map['genericWebService'] == null
          ? null
          : FulfillmentGenericWebService.fromMap(
              (map['genericWebService'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
