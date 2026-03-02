// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_configuration_response.dart';
import 'storage_configuration_response.dart';
import 'time_configuration_response.dart';
import 'web_proxy_configuration_response.dart';

/// Device configuration.
class TargetDeviceConfigurationResponse {
  /// Hostname of the device.
  final pulumi.Input<String>? hostName;
  /// Network configuration.
  final pulumi.Input<NetworkConfigurationResponse>? network;
  /// Storage configuration.
  final pulumi.Input<StorageConfigurationResponse>? storage;
  /// Time configuration.
  final pulumi.Input<TimeConfigurationResponse>? time;
  /// Web proxy configuration.
  final pulumi.Input<WebProxyConfigurationResponse>? webProxy;

  /// Creates a new [TargetDeviceConfigurationResponse].
  /// [hostName] Hostname of the device.
  /// [network] Network configuration.
  /// [storage] Storage configuration.
  /// [time] Time configuration.
  /// [webProxy] Web proxy configuration.
  TargetDeviceConfigurationResponse({
    this.hostName,
    this.network,
    this.storage,
    this.time,
    this.webProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': ?hostName,
      'network': ?pulumi.Input.mapOptionalInputValue<NetworkConfigurationResponse, Map<String, dynamic>>(network, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<StorageConfigurationResponse, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'time': ?pulumi.Input.mapOptionalInputValue<TimeConfigurationResponse, Map<String, dynamic>>(time, (value) => value.toMap()),
      'webProxy': ?pulumi.Input.mapOptionalInputValue<WebProxyConfigurationResponse, Map<String, dynamic>>(webProxy, (value) => value.toMap()),
    };
  }

  factory TargetDeviceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TargetDeviceConfigurationResponse(
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      network: map['network'] == null ? null : (NetworkConfigurationResponse.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      storage: map['storage'] == null ? null : (StorageConfigurationResponse.fromMap((map['storage'] as Map).cast<String, dynamic>())).input(),
      time: map['time'] == null ? null : (TimeConfigurationResponse.fromMap((map['time'] as Map).cast<String, dynamic>())).input(),
      webProxy: map['webProxy'] == null ? null : (WebProxyConfigurationResponse.fromMap((map['webProxy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

