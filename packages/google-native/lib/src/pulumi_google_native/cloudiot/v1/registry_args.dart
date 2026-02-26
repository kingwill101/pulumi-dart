// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'event_notification_config.dart';
import 'http_config.dart';
import 'mqtt_config.dart';
import 'registry_credential.dart';
import 'registry_log_level.dart';
import 'state_notification_config.dart';

/// The set of arguments for Registry.
class RegistryArgs {
  /// The credentials used to verify the device credentials. No more than 10 credentials can be bound to a single registry at a time. The verification process occurs at the time of device creation or update. If this field is empty, no verification is performed. Otherwise, the credentials of a newly created device or added credentials of an updated device should be signed with one of these registry credentials. Note, however, that existing devices will never be affected by modifications to this list of credentials: after a device has been successfully created in a registry, it should be able to connect even if its registry credentials are revoked, deleted, or modified.
  final Input<List<RegistryCredential>>? credentials;

  /// The configuration for notification of telemetry events received from the device. All telemetry events that were successfully published by the device and acknowledged by Cloud IoT Core are guaranteed to be delivered to Cloud Pub/Sub. If multiple configurations match a message, only the first matching configuration is used. If you try to publish a device telemetry event using MQTT without specifying a Cloud Pub/Sub topic for the device's registry, the connection closes automatically. If you try to do so using an HTTP connection, an error is returned. Up to 10 configurations may be provided.
  final Input<List<EventNotificationConfig>>? eventNotificationConfigs;

  /// The DeviceService (HTTP) configuration for this device registry.
  final Input<HttpConfig>? httpConfig;

  /// The identifier of this device registry. For example, `myRegistry`.
  final Input<String>? id;
  final Input<String>? location;

  /// **Beta Feature** The default logging verbosity for activity from devices in this registry. The verbosity level can be overridden by Device.log_level.
  final Input<RegistryLogLevel>? logLevel;

  /// The MQTT configuration for this device registry.
  final Input<MqttConfig>? mqttConfig;

  /// The resource path name. For example, `projects/example-project/locations/us-central1/registries/my-registry`.
  final Input<String>? name;
  final Input<String>? project;

  /// The configuration for notification of new states received from the device. State updates are guaranteed to be stored in the state history, but notifications to Cloud Pub/Sub are not guaranteed. For example, if permissions are misconfigured or the specified topic doesn't exist, no notification will be published but the state will still be stored in Cloud IoT Core.
  final Input<StateNotificationConfig>? stateNotificationConfig;

  RegistryArgs({
    this.credentials,
    this.eventNotificationConfigs,
    this.httpConfig,
    this.id,
    this.location,
    this.logLevel,
    this.mqttConfig,
    this.name,
    this.project,
    this.stateNotificationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final credentialsValue = credentials;
    if (credentialsValue != null) {
      map['credentials'] = Input.mapOptionalInputValue<List<RegistryCredential>,
              List<Map<String, dynamic>>>(
          credentialsValue,
          (value) => Input.encodeList<RegistryCredential, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final eventNotificationConfigsValue = eventNotificationConfigs;
    if (eventNotificationConfigsValue != null) {
      map['eventNotificationConfigs'] = Input.mapOptionalInputValue<
              List<EventNotificationConfig>, List<Map<String, dynamic>>>(
          eventNotificationConfigsValue,
          (value) =>
              Input.encodeList<EventNotificationConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final httpConfigValue = httpConfig;
    if (httpConfigValue != null) {
      map['httpConfig'] =
          Input.mapOptionalInputValue<HttpConfig, Map<String, dynamic>>(
              httpConfigValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final logLevelValue = logLevel;
    if (logLevelValue != null) {
      map['logLevel'] = Input.mapOptionalInputValue<RegistryLogLevel, String>(
          logLevelValue, (value) => value.value);
    }
    final mqttConfigValue = mqttConfig;
    if (mqttConfigValue != null) {
      map['mqttConfig'] =
          Input.mapOptionalInputValue<MqttConfig, Map<String, dynamic>>(
              mqttConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final stateNotificationConfigValue = stateNotificationConfig;
    if (stateNotificationConfigValue != null) {
      map['stateNotificationConfig'] = Input.mapOptionalInputValue<
              StateNotificationConfig, Map<String, dynamic>>(
          stateNotificationConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegistryArgs.fromMap(Map<String, dynamic> map) {
    return RegistryArgs(
      credentials:
          Input.asOptionalInput<List<RegistryCredential>>(map['credentials']),
      eventNotificationConfigs:
          Input.asOptionalInput<List<EventNotificationConfig>>(
              map['eventNotificationConfigs']),
      httpConfig: Input.asOptionalInput<HttpConfig>(map['httpConfig']),
      id: Input.asOptionalInput<String>(map['id']),
      location: Input.asOptionalInput<String>(map['location']),
      logLevel: Input.asOptionalInput<RegistryLogLevel>(map['logLevel']),
      mqttConfig: Input.asOptionalInput<MqttConfig>(map['mqttConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      stateNotificationConfig: Input.asOptionalInput<StateNotificationConfig>(
          map['stateNotificationConfig']),
    );
  }
}
