// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_configuration.dart';
import 'storage_configuration.dart';
import 'time_configuration.dart';
import 'web_proxy_configuration.dart';

/// Device configuration.
class TargetDeviceConfiguration {
  /// Hostname of the device.
  final pulumi.Input<String>? hostName;
  /// Network configuration.
  final pulumi.Input<NetworkConfiguration>? network;
  /// Storage configuration.
  final pulumi.Input<StorageConfiguration>? storage;
  /// Time configuration.
  final pulumi.Input<TimeConfiguration>? time;
  /// Web proxy configuration.
  final pulumi.Input<WebProxyConfiguration>? webProxy;

  /// Creates a new [TargetDeviceConfiguration].
  /// [hostName] Hostname of the device.
  /// [network] Network configuration.
  /// [storage] Storage configuration.
  /// [time] Time configuration.
  /// [webProxy] Web proxy configuration.
  TargetDeviceConfiguration({
    this.hostName,
    this.network,
    this.storage,
    this.time,
    this.webProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': ?hostName,
      'network': ?pulumi.Input.mapOptionalInputValue<NetworkConfiguration, Map<String, dynamic>>(network, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<StorageConfiguration, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'time': ?pulumi.Input.mapOptionalInputValue<TimeConfiguration, Map<String, dynamic>>(time, (value) => value.toMap()),
      'webProxy': ?pulumi.Input.mapOptionalInputValue<WebProxyConfiguration, Map<String, dynamic>>(webProxy, (value) => value.toMap()),
    };
  }

  factory TargetDeviceConfiguration.fromMap(Map<String, dynamic> map) {
    return TargetDeviceConfiguration(
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      network: map['network'] == null ? null : (NetworkConfiguration.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      storage: map['storage'] == null ? null : (StorageConfiguration.fromMap((map['storage'] as Map).cast<String, dynamic>())).input(),
      time: map['time'] == null ? null : (TimeConfiguration.fromMap((map['time'] as Map).cast<String, dynamic>())).input(),
      webProxy: map['webProxy'] == null ? null : (WebProxyConfiguration.fromMap((map['webProxy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

