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
    final map = <String, dynamic>{};
    map['additionalVariables'] =
        pulumi.Input.encodeList<ConfigVariableResponse, Map<String, dynamic>>(
            additionalVariables, (value) => value.toMap());
    map['authConfig'] = authConfig.toMap();
    map['encryptionKey'] = encryptionKey.toMap();
    map['enrichmentEnabled'] = enrichmentEnabled;
    map['eventsListenerIngressEndpoint'] = eventsListenerIngressEndpoint;
    map['privateConnectivityEnabled'] = privateConnectivityEnabled;
    map['registrationDestinationConfig'] =
        registrationDestinationConfig.toMap();
    return map;
  }

  factory EventingConfigResponse.fromMap(Map<String, dynamic> map) {
    return EventingConfigResponse(
      additionalVariables: pulumi.Input.decodeList<ConfigVariableResponse>(
          map['additionalVariables'],
          (value) => ConfigVariableResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      authConfig: AuthConfigResponse.fromMap(
          (map['authConfig'] as Map).cast<String, dynamic>()),
      encryptionKey: ConfigVariableResponse.fromMap(
          (map['encryptionKey'] as Map).cast<String, dynamic>()),
      enrichmentEnabled: map['enrichmentEnabled'] as bool,
      eventsListenerIngressEndpoint:
          map['eventsListenerIngressEndpoint'] as String,
      privateConnectivityEnabled: map['privateConnectivityEnabled'] as bool,
      registrationDestinationConfig: DestinationConfigResponse.fromMap(
          (map['registrationDestinationConfig'] as Map)
              .cast<String, dynamic>()),
    );
  }
}
