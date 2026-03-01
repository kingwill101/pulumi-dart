// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_response.dart';
import 'config_variable_response.dart';
import 'destination_config_response.dart';

/// Eventing Configuration of a connection
class EventingConfigResponse {
  /// Additional eventing related field values
  final List<ConfigVariableResponse> additionalVariables;

  /// Auth details for the webhook adapter.
  final AuthConfigResponse authConfig;

  /// Encryption key (can be either Google managed or CMEK).
  final ConfigVariableResponse encryptionKey;

  /// Enrichment Enabled.
  final bool enrichmentEnabled;

  /// Optional. Ingress endpoint of the event listener. This is used only when private connectivity is enabled.
  final String eventsListenerIngressEndpoint;

  /// Optional. Private Connectivity Enabled.
  final bool privateConnectivityEnabled;

  /// Registration endpoint for auto registration.
  final DestinationConfigResponse registrationDestinationConfig;

  /// Creates a new [EventingConfigResponse].
  /// [additionalVariables] Additional eventing related field values
  /// [authConfig] Auth details for the webhook adapter.
  /// [encryptionKey] Encryption key (can be either Google managed or CMEK).
  /// [enrichmentEnabled] Enrichment Enabled.
  /// [eventsListenerIngressEndpoint] Optional. Ingress endpoint of the event listener. This is used only when private connectivity is enabled.
  /// [privateConnectivityEnabled] Optional. Private Connectivity Enabled.
  /// [registrationDestinationConfig] Registration endpoint for auto registration.
  EventingConfigResponse({
    required this.additionalVariables,
    required this.authConfig,
    required this.encryptionKey,
    required this.enrichmentEnabled,
    required this.eventsListenerIngressEndpoint,
    required this.privateConnectivityEnabled,
    required this.registrationDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables':
          pulumi.Input.encodeList<ConfigVariableResponse, Map<String, dynamic>>(
            additionalVariables,
            (value) => value.toMap(),
          ),
      'authConfig': authConfig.toMap(),
      'encryptionKey': encryptionKey.toMap(),
      'enrichmentEnabled': enrichmentEnabled,
      'eventsListenerIngressEndpoint': eventsListenerIngressEndpoint,
      'privateConnectivityEnabled': privateConnectivityEnabled,
      'registrationDestinationConfig': registrationDestinationConfig.toMap(),
    };
  }

  factory EventingConfigResponse.fromMap(Map<String, dynamic> map) {
    return EventingConfigResponse(
      additionalVariables: pulumi.Input.decodeList<ConfigVariableResponse>(
        map['additionalVariables'],
        (value) => ConfigVariableResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      authConfig: AuthConfigResponse.fromMap(
        (map['authConfig'] as Map).cast<String, dynamic>(),
      ),
      encryptionKey: ConfigVariableResponse.fromMap(
        (map['encryptionKey'] as Map).cast<String, dynamic>(),
      ),
      enrichmentEnabled: map['enrichmentEnabled'] as bool,
      eventsListenerIngressEndpoint:
          map['eventsListenerIngressEndpoint'] as String,
      privateConnectivityEnabled: map['privateConnectivityEnabled'] as bool,
      registrationDestinationConfig: DestinationConfigResponse.fromMap(
        (map['registrationDestinationConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
