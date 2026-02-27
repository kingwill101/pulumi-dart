import 'package:pulumi/pulumi.dart' hide Config;
import 'event_notification_config_response.dart';
import 'http_config_response.dart';
import 'mqtt_config_response.dart';
import 'registry_args.dart';
import 'registry_credential_response.dart';
import 'state_notification_config_response.dart';

/// Creates a device registry that contains devices.
class Registry extends CustomResource {
  /// The credentials used to verify the device credentials. No more than 10 credentials can be bound to a single registry at a time. The verification process occurs at the time of device creation or update. If this field is empty, no verification is performed. Otherwise, the credentials of a newly created device or added credentials of an updated device should be signed with one of these registry credentials. Note, however, that existing devices will never be affected by modifications to this list of credentials: after a device has been successfully created in a registry, it should be able to connect even if its registry credentials are revoked, deleted, or modified.
  late final Output<List<RegistryCredentialResponse>> credentials;

  /// The configuration for notification of telemetry events received from the device. All telemetry events that were successfully published by the device and acknowledged by Cloud IoT Core are guaranteed to be delivered to Cloud Pub/Sub. If multiple configurations match a message, only the first matching configuration is used. If you try to publish a device telemetry event using MQTT without specifying a Cloud Pub/Sub topic for the device's registry, the connection closes automatically. If you try to do so using an HTTP connection, an error is returned. Up to 10 configurations may be provided.
  late final Output<List<EventNotificationConfigResponse>>
      eventNotificationConfigs;

  /// The DeviceService (HTTP) configuration for this device registry.
  late final Output<HttpConfigResponse> httpConfig;
  late final Output<String> location;

  /// **Beta Feature** The default logging verbosity for activity from devices in this registry. The verbosity level can be overridden by Device.log_level.
  late final Output<String> logLevel;

  /// The MQTT configuration for this device registry.
  late final Output<MqttConfigResponse> mqttConfig;

  /// The resource path name. For example, `projects/example-project/locations/us-central1/registries/my-registry`.
  late final Output<String> name;
  late final Output<String> project;

  /// The configuration for notification of new states received from the device. State updates are guaranteed to be stored in the state history, but notifications to Cloud Pub/Sub are not guaranteed. For example, if permissions are misconfigured or the specified topic doesn't exist, no notification will be published but the state will still be stored in Cloud IoT Core.
  late final Output<StateNotificationConfigResponse> stateNotificationConfig;

  Registry(
    String name, {
    RegistryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudiot/v1:Registry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.credentials =
        registerOutput<List<RegistryCredentialResponse>>('credentials');
    this.eventNotificationConfigs =
        registerOutput<List<EventNotificationConfigResponse>>(
            'eventNotificationConfigs');
    this.httpConfig = registerOutput<HttpConfigResponse>('httpConfig');
    this.location = registerOutput<String>('location');
    this.logLevel = registerOutput<String>('logLevel');
    this.mqttConfig = registerOutput<MqttConfigResponse>('mqttConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.stateNotificationConfig =
        registerOutput<StateNotificationConfigResponse>(
            'stateNotificationConfig');
  }
}
