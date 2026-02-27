// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'auth_config.dart';
import 'config_variable.dart';
import 'destination_config.dart';

/// Eventing Configuration of a connection
class EventingConfig {
  /// Additional eventing related field values
  final List<ConfigVariable>? additionalVariables;

  /// Auth details for the webhook adapter.
  final AuthConfig? authConfig;

  /// Encryption key (can be either Google managed or CMEK).
  final ConfigVariable? encryptionKey;

  /// Enrichment Enabled.
  final bool? enrichmentEnabled;

  /// Optional. Ingress endpoint of the event listener. This is used only when private connectivity is enabled.
  final String? eventsListenerIngressEndpoint;

  /// Optional. Private Connectivity Enabled.
  final bool? privateConnectivityEnabled;

  /// Registration endpoint for auto registration.
  final DestinationConfig? registrationDestinationConfig;

  EventingConfig({
    this.additionalVariables,
    this.authConfig,
    this.encryptionKey,
    this.enrichmentEnabled,
    this.eventsListenerIngressEndpoint,
    this.privateConnectivityEnabled,
    this.registrationDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalVariablesValue = additionalVariables;
    if (additionalVariablesValue != null) {
      map['additionalVariables'] =
          Input.encodeList<ConfigVariable, Map<String, dynamic>>(
              additionalVariablesValue, (value) => value.toMap());
    }
    final authConfigValue = authConfig;
    if (authConfigValue != null) {
      map['authConfig'] = authConfigValue.toMap();
    }
    final encryptionKeyValue = encryptionKey;
    if (encryptionKeyValue != null) {
      map['encryptionKey'] = encryptionKeyValue.toMap();
    }
    final enrichmentEnabledValue = enrichmentEnabled;
    if (enrichmentEnabledValue != null) {
      map['enrichmentEnabled'] = enrichmentEnabledValue;
    }
    final eventsListenerIngressEndpointValue = eventsListenerIngressEndpoint;
    if (eventsListenerIngressEndpointValue != null) {
      map['eventsListenerIngressEndpoint'] = eventsListenerIngressEndpointValue;
    }
    final privateConnectivityEnabledValue = privateConnectivityEnabled;
    if (privateConnectivityEnabledValue != null) {
      map['privateConnectivityEnabled'] = privateConnectivityEnabledValue;
    }
    final registrationDestinationConfigValue = registrationDestinationConfig;
    if (registrationDestinationConfigValue != null) {
      map['registrationDestinationConfig'] =
          registrationDestinationConfigValue.toMap();
    }
    return map;
  }

  factory EventingConfig.fromMap(Map<String, dynamic> map) {
    return EventingConfig(
      additionalVariables: map['additionalVariables'] == null
          ? null
          : Input.decodeList<ConfigVariable>(
              map['additionalVariables'],
              (value) => ConfigVariable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      authConfig: map['authConfig'] == null
          ? null
          : AuthConfig.fromMap(
              (map['authConfig'] as Map).cast<String, dynamic>()),
      encryptionKey: map['encryptionKey'] == null
          ? null
          : ConfigVariable.fromMap(
              (map['encryptionKey'] as Map).cast<String, dynamic>()),
      enrichmentEnabled: map['enrichmentEnabled'] == null
          ? null
          : map['enrichmentEnabled'] as bool,
      eventsListenerIngressEndpoint:
          map['eventsListenerIngressEndpoint'] == null
              ? null
              : map['eventsListenerIngressEndpoint'] as String,
      privateConnectivityEnabled: map['privateConnectivityEnabled'] == null
          ? null
          : map['privateConnectivityEnabled'] as bool,
      registrationDestinationConfig:
          map['registrationDestinationConfig'] == null
              ? null
              : DestinationConfig.fromMap(
                  (map['registrationDestinationConfig'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
