// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'device_config.dart';
import 'device_credential.dart';
import 'device_log_level.dart';
import 'gateway_config.dart';

/// The set of arguments for Device.
class DeviceArgs3 {
  /// If a device is blocked, connections or requests from this device will fail. Can be used to temporarily prevent the device from connecting if, for example, the sensor is generating bad data and needs maintenance.
  final Input<bool>? blocked;

  /// The most recent device configuration, which is eventually sent from Cloud IoT Core to the device. If not present on creation, the configuration will be initialized with an empty payload and version value of `1`. To update this field after creation, use the `DeviceManager.ModifyCloudToDeviceConfig` method.
  final Input<DeviceConfig>? config;

  /// The credentials used to authenticate this device. To allow credential rotation without interruption, multiple device credentials can be bound to this device. No more than 3 credentials can be bound to a single device at a time. When new credentials are added to a device, they are verified against the registry credentials. For details, see the description of the `DeviceRegistry.credentials` field.
  final Input<List<DeviceCredential>>? credentials;

  /// Gateway-related configuration and state.
  final Input<GatewayConfig>? gatewayConfig;

  /// The user-defined device identifier. The device ID must be unique within a device registry.
  final Input<String>? id;
  final Input<String>? location;

  /// **Beta Feature** The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
  final Input<DeviceLogLevel>? logLevel;

  /// The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device. Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length. Values are free-form strings. Each value must be less than or equal to 32 KB in size. The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500.
  final Input<Map<String, String>>? metadata;

  /// The resource path name. For example, `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`. When `name` is populated as a response from the service, it always ends in the device numeric ID.
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> registryId;

  DeviceArgs3({
    this.blocked,
    this.config,
    this.credentials,
    this.gatewayConfig,
    this.id,
    this.location,
    this.logLevel,
    this.metadata,
    this.name,
    this.project,
    required this.registryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blockedValue = blocked;
    if (blockedValue != null) {
      map['blocked'] = blockedValue;
    }
    final configValue = config;
    if (configValue != null) {
      map['config'] =
          Input.mapOptionalInputValue<DeviceConfig, Map<String, dynamic>>(
              configValue, (value) => value.toMap());
    }
    final credentialsValue = credentials;
    if (credentialsValue != null) {
      map['credentials'] = Input.mapOptionalInputValue<List<DeviceCredential>,
              List<Map<String, dynamic>>>(
          credentialsValue,
          (value) => Input.encodeList<DeviceCredential, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final gatewayConfigValue = gatewayConfig;
    if (gatewayConfigValue != null) {
      map['gatewayConfig'] =
          Input.mapOptionalInputValue<GatewayConfig, Map<String, dynamic>>(
              gatewayConfigValue, (value) => value.toMap());
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
      map['logLevel'] = Input.mapOptionalInputValue<DeviceLogLevel, String>(
          logLevelValue, (value) => value.value);
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['registryId'] = registryId;
    return map;
  }

  factory DeviceArgs3.fromMap(Map<String, dynamic> map) {
    return DeviceArgs3(
      blocked: Input.asOptionalInput<bool>(map['blocked']),
      config: Input.asOptionalInput<DeviceConfig>(map['config']),
      credentials:
          Input.asOptionalInput<List<DeviceCredential>>(map['credentials']),
      gatewayConfig: Input.asOptionalInput<GatewayConfig>(map['gatewayConfig']),
      id: Input.asOptionalInput<String>(map['id']),
      location: Input.asOptionalInput<String>(map['location']),
      logLevel: Input.asOptionalInput<DeviceLogLevel>(map['logLevel']),
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      registryId: Input.asInput<String>(map['registryId']),
    );
  }
}
