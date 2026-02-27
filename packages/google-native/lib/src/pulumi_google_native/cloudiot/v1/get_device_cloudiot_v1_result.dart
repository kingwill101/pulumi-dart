// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_config_response.dart';
import 'device_credential_response.dart';
import 'device_state_response.dart';
import 'gateway_config_response.dart';
import 'status_response_cloudiot_v1.dart';

/// Result data returned by getDevice.
class GetDeviceCloudiotV1Result {
  /// If a device is blocked, connections or requests from this device will fail. Can be used to temporarily prevent the device from connecting if, for example, the sensor is generating bad data and needs maintenance.
  final bool blocked;

  /// The most recent device configuration, which is eventually sent from Cloud IoT Core to the device. If not present on creation, the configuration will be initialized with an empty payload and version value of `1`. To update this field after creation, use the `DeviceManager.ModifyCloudToDeviceConfig` method.
  final DeviceConfigResponse config;

  /// The credentials used to authenticate this device. To allow credential rotation without interruption, multiple device credentials can be bound to this device. No more than 3 credentials can be bound to a single device at a time. When new credentials are added to a device, they are verified against the registry credentials. For details, see the description of the `DeviceRegistry.credentials` field.
  final List<DeviceCredentialResponse> credentials;

  /// Gateway-related configuration and state.
  final GatewayConfigResponse gatewayConfig;

  /// [Output only] The last time a cloud-to-device config version acknowledgment was received from the device. This field is only for configurations sent through MQTT.
  final String lastConfigAckTime;

  /// [Output only] The last time a cloud-to-device config version was sent to the device.
  final String lastConfigSendTime;

  /// [Output only] The error message of the most recent error, such as a failure to publish to Cloud Pub/Sub. 'last_error_time' is the timestamp of this field. If no errors have occurred, this field has an empty message and the status code 0 == OK. Otherwise, this field is expected to have a status code other than OK.
  final StatusResponseCloudiotV1 lastErrorStatus;

  /// [Output only] The time the most recent error occurred, such as a failure to publish to Cloud Pub/Sub. This field is the timestamp of 'last_error_status'.
  final String lastErrorTime;

  /// [Output only] The last time a telemetry event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
  final String lastEventTime;

  /// [Output only] The last time an MQTT `PINGREQ` was received. This field applies only to devices connecting through MQTT. MQTT clients usually only send `PINGREQ` messages if the connection is idle, and no other messages have been sent. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
  final String lastHeartbeatTime;

  /// [Output only] The last time a state event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.
  final String lastStateTime;

  /// **Beta Feature** The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
  final String logLevel;

  /// The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device. Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length. Values are free-form strings. Each value must be less than or equal to 32 KB in size. The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500.
  final Map<String, String> metadata;

  /// The resource path name. For example, `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`. When `name` is populated as a response from the service, it always ends in the device numeric ID.
  final String name;

  /// [Output only] A server-defined unique numeric ID for the device. This is a more compact way to identify devices, and it is globally unique.
  final String numId;

  /// [Output only] The state most recently received from the device. If no state has been reported, this field is not present.
  final DeviceStateResponse state;

  GetDeviceCloudiotV1Result({
    required this.blocked,
    required this.config,
    required this.credentials,
    required this.gatewayConfig,
    required this.lastConfigAckTime,
    required this.lastConfigSendTime,
    required this.lastErrorStatus,
    required this.lastErrorTime,
    required this.lastEventTime,
    required this.lastHeartbeatTime,
    required this.lastStateTime,
    required this.logLevel,
    required this.metadata,
    required this.name,
    required this.numId,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blocked'] = blocked;
    map['config'] = config.toMap();
    map['credentials'] =
        pulumi.Input.encodeList<DeviceCredentialResponse, Map<String, dynamic>>(
            credentials, (value) => value.toMap());
    map['gatewayConfig'] = gatewayConfig.toMap();
    map['lastConfigAckTime'] = lastConfigAckTime;
    map['lastConfigSendTime'] = lastConfigSendTime;
    map['lastErrorStatus'] = lastErrorStatus.toMap();
    map['lastErrorTime'] = lastErrorTime;
    map['lastEventTime'] = lastEventTime;
    map['lastHeartbeatTime'] = lastHeartbeatTime;
    map['lastStateTime'] = lastStateTime;
    map['logLevel'] = logLevel;
    map['metadata'] = metadata;
    map['name'] = name;
    map['numId'] = numId;
    map['state'] = state.toMap();
    return map;
  }

  factory GetDeviceCloudiotV1Result.fromMap(Map<String, dynamic> map) {
    return GetDeviceCloudiotV1Result(
      blocked: map['blocked'] as bool,
      config: DeviceConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      credentials: pulumi.Input.decodeList<DeviceCredentialResponse>(
          map['credentials'],
          (value) => DeviceCredentialResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      gatewayConfig: GatewayConfigResponse.fromMap(
          (map['gatewayConfig'] as Map).cast<String, dynamic>()),
      lastConfigAckTime: map['lastConfigAckTime'] as String,
      lastConfigSendTime: map['lastConfigSendTime'] as String,
      lastErrorStatus: StatusResponseCloudiotV1.fromMap(
          (map['lastErrorStatus'] as Map).cast<String, dynamic>()),
      lastErrorTime: map['lastErrorTime'] as String,
      lastEventTime: map['lastEventTime'] as String,
      lastHeartbeatTime: map['lastHeartbeatTime'] as String,
      lastStateTime: map['lastStateTime'] as String,
      logLevel: map['logLevel'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      numId: map['numId'] as String,
      state: DeviceStateResponse.fromMap(
          (map['state'] as Map).cast<String, dynamic>()),
    );
  }
}
