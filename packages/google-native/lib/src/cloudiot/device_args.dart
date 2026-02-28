// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_config.dart';
import 'device_credential.dart';
import 'device_log_level.dart';
import 'gateway_config.dart';

/// {@template pulumi_cloudiot_v1_device_args_doc}
/// The set of arguments for Device.
/// {@endtemplate}
/// {@macro pulumi_cloudiot_v1_device_args_doc}
class DeviceArgs {
  /// If a device is blocked, connections or requests from this device will fail. Can be used to temporarily prevent the device from connecting if, for example, the sensor is generating bad data and needs maintenance.
  final pulumi.Input<bool>? blocked;

  /// The most recent device configuration, which is eventually sent from Cloud IoT Core to the device. If not present on creation, the configuration will be initialized with an empty payload and version value of `1`. To update this field after creation, use the `DeviceManager.ModifyCloudToDeviceConfig` method.
  final pulumi.Input<DeviceConfig>? config;

  /// The credentials used to authenticate this device. To allow credential rotation without interruption, multiple device credentials can be bound to this device. No more than 3 credentials can be bound to a single device at a time. When new credentials are added to a device, they are verified against the registry credentials. For details, see the description of the `DeviceRegistry.credentials` field.
  final pulumi.Input<List<DeviceCredential>>? credentials;

  /// Gateway-related configuration and state.
  final pulumi.Input<GatewayConfig>? gatewayConfig;

  /// The user-defined device identifier. The device ID must be unique within a device registry.
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? location;

  /// **Beta Feature** The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
  final pulumi.Input<DeviceLogLevel>? logLevel;

  /// The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device. Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length. Values are free-form strings. Each value must be less than or equal to 32 KB in size. The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The resource path name. For example, `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`. When `name` is populated as a response from the service, it always ends in the device numeric ID.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registryId;

  /// Creates a new [DeviceArgs].
  /// [blocked] If a device is blocked, connections or requests from this device will fail. Can be used to temporarily prevent the device from connecting if, for example, the sensor is generating bad data and needs maintenance.
  /// [config] The most recent device configuration, which is eventually sent from Cloud IoT Core to the device. If not present on creation, the configuration will be initialized with an empty payload and version value of `1`. To update this field after creation, use the `DeviceManager.ModifyCloudToDeviceConfig` method.
  /// [credentials] The credentials used to authenticate this device. To allow credential rotation without interruption, multiple device credentials can be bound to this device. No more than 3 credentials can be bound to a single device at a time. When new credentials are added to a device, they are verified against the registry credentials. For details, see the description of the `DeviceRegistry.credentials` field.
  /// [gatewayConfig] Gateway-related configuration and state.
  /// [id] The user-defined device identifier. The device ID must be unique within a device registry.
  /// [location] Optional.
  /// [logLevel] **Beta Feature** The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
  /// [metadata] The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device. Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length. Values are free-form strings. Each value must be less than or equal to 32 KB in size. The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500.
  /// [name] The resource path name. For example, `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`. When `name` is populated as a response from the service, it always ends in the device numeric ID.
  /// [project] Optional.
  /// [registryId] Required.
  DeviceArgs({
    bool? blocked,
    DeviceConfig? config,
    List<DeviceCredential>? credentials,
    GatewayConfig? gatewayConfig,
    String? id,
    String? location,
    DeviceLogLevel? logLevel,
    Map<String, String>? metadata,
    String? name,
    String? project,
    required String registryId,
  })  : blocked = pulumi.Input.asOptionalInput<bool>(blocked),
        config = pulumi.Input.asOptionalInput<DeviceConfig>(config),
        credentials =
            pulumi.Input.asOptionalInput<List<DeviceCredential>>(credentials),
        gatewayConfig =
            pulumi.Input.asOptionalInput<GatewayConfig>(gatewayConfig),
        id = pulumi.Input.asOptionalInput<String>(id),
        location = pulumi.Input.asOptionalInput<String>(location),
        logLevel = pulumi.Input.asOptionalInput<DeviceLogLevel>(logLevel),
        metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        registryId = pulumi.Input.asInput<String>(registryId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blockedValue = blocked;
    if (blockedValue != null) {
      map['blocked'] = blockedValue;
    }
    final configValue = config;
    if (configValue != null) {
      map['config'] = pulumi.Input.mapOptionalInputValue<DeviceConfig,
          Map<String, dynamic>>(configValue, (value) => value.toMap());
    }
    final credentialsValue = credentials;
    if (credentialsValue != null) {
      map['credentials'] = pulumi.Input.mapOptionalInputValue<
              List<DeviceCredential>, List<Map<String, dynamic>>>(
          credentialsValue,
          (value) =>
              pulumi.Input.encodeList<DeviceCredential, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final gatewayConfigValue = gatewayConfig;
    if (gatewayConfigValue != null) {
      map['gatewayConfig'] = pulumi.Input.mapOptionalInputValue<GatewayConfig,
          Map<String, dynamic>>(gatewayConfigValue, (value) => value.toMap());
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
      map['logLevel'] =
          pulumi.Input.mapOptionalInputValue<DeviceLogLevel, String>(
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

  factory DeviceArgs.fromMap(Map<String, dynamic> map) {
    return DeviceArgs(
      blocked: map['blocked'] == null ? null : map['blocked'] as bool,
      config: map['config'] == null
          ? null
          : DeviceConfig.fromMap(
              (map['config'] as Map).cast<String, dynamic>()),
      credentials: map['credentials'] == null
          ? null
          : pulumi.Input.decodeList<DeviceCredential>(
              map['credentials'],
              (value) => DeviceCredential.fromMap(
                  (value as Map).cast<String, dynamic>())),
      gatewayConfig: map['gatewayConfig'] == null
          ? null
          : GatewayConfig.fromMap(
              (map['gatewayConfig'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      logLevel: map['logLevel'] == null
          ? null
          : DeviceLogLevel.fromValue(map['logLevel'] as String),
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      registryId: map['registryId'] as String,
    );
  }
}
