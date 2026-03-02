// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_safety_response.dart';
import 'model_settings_response.dart';
import 'serverless_inference_endpoint_response.dart';

class ServerlessEndpointResponse {
  /// [Required] Specifies the authentication mode for the Serverless endpoint.
  final pulumi.Input<String> authMode;
  /// Specifies the content safety options. If omitted, the default content safety settings will be configured
  final pulumi.Input<ContentSafetyResponse>? contentSafety;
  /// The current state of the ServerlessEndpoint.
  final pulumi.Input<String> endpointState;
  /// The inference uri to target when making requests against the serverless endpoint
  final pulumi.Input<ServerlessInferenceEndpointResponse> inferenceEndpoint;
  /// The MarketplaceSubscription Azure ID associated to this ServerlessEndpoint.
  final pulumi.Input<String> marketplaceSubscriptionId;
  /// The model settings (model id) for the model being serviced on the ServerlessEndpoint.
  final pulumi.Input<ModelSettingsResponse>? modelSettings;
  /// Provisioning state for the endpoint.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ServerlessEndpointResponse].
  /// [authMode] [Required] Specifies the authentication mode for the Serverless endpoint.
  /// [contentSafety] Specifies the content safety options. If omitted, the default content safety settings will be configured
  /// [endpointState] The current state of the ServerlessEndpoint.
  /// [inferenceEndpoint] The inference uri to target when making requests against the serverless endpoint
  /// [marketplaceSubscriptionId] The MarketplaceSubscription Azure ID associated to this ServerlessEndpoint.
  /// [modelSettings] The model settings (model id) for the model being serviced on the ServerlessEndpoint.
  /// [provisioningState] Provisioning state for the endpoint.
  ServerlessEndpointResponse({
    required this.authMode,
    this.contentSafety,
    required this.endpointState,
    required this.inferenceEndpoint,
    required this.marketplaceSubscriptionId,
    this.modelSettings,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': authMode,
      'contentSafety': ?pulumi.Input.mapOptionalInputValue<ContentSafetyResponse, Map<String, dynamic>>(contentSafety, (value) => value.toMap()),
      'endpointState': endpointState,
      'inferenceEndpoint': pulumi.Input.mapInputValue<ServerlessInferenceEndpointResponse, Map<String, dynamic>>(inferenceEndpoint, (value) => value.toMap()),
      'marketplaceSubscriptionId': marketplaceSubscriptionId,
      'modelSettings': ?pulumi.Input.mapOptionalInputValue<ModelSettingsResponse, Map<String, dynamic>>(modelSettings, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ServerlessEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ServerlessEndpointResponse(
      authMode: (map['authMode'] as String).input(),
      contentSafety: map['contentSafety'] == null ? null : (ContentSafetyResponse.fromMap((map['contentSafety']! as Map).cast<String, dynamic>())).input(),
      endpointState: (map['endpointState'] as String).input(),
      inferenceEndpoint: (ServerlessInferenceEndpointResponse.fromMap((map['inferenceEndpoint'] as Map).cast<String, dynamic>())).input(),
      marketplaceSubscriptionId: (map['marketplaceSubscriptionId'] as String).input(),
      modelSettings: map['modelSettings'] == null ? null : (ModelSettingsResponse.fromMap((map['modelSettings']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

