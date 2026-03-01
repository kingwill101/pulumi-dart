// ignore_for_file: unused_element, unnecessary_cast

import 'network_configuration.dart';
import 'storage_configuration.dart';
import 'time_configuration.dart';
import 'web_proxy_configuration.dart';

/// Device configuration.
class TargetDeviceConfiguration {
  /// Hostname of the device.
  final String? hostName;
  /// Network configuration.
  final NetworkConfiguration? network;
  /// Storage configuration.
  final StorageConfiguration? storage;
  /// Time configuration.
  final TimeConfiguration? time;
  /// Web proxy configuration.
  final WebProxyConfiguration? webProxy;

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
      'network': ?network == null ? null : network!.toMap(),
      'storage': ?storage == null ? null : storage!.toMap(),
      'time': ?time == null ? null : time!.toMap(),
      'webProxy': ?webProxy == null ? null : webProxy!.toMap(),
    };
  }

  factory TargetDeviceConfiguration.fromMap(Map<String, dynamic> map) {
    return TargetDeviceConfiguration(
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      network: map['network'] == null ? null : NetworkConfiguration.fromMap((map['network'] as Map).cast<String, dynamic>()),
      storage: map['storage'] == null ? null : StorageConfiguration.fromMap((map['storage'] as Map).cast<String, dynamic>()),
      time: map['time'] == null ? null : TimeConfiguration.fromMap((map['time'] as Map).cast<String, dynamic>()),
      webProxy: map['webProxy'] == null ? null : WebProxyConfiguration.fromMap((map['webProxy'] as Map).cast<String, dynamic>()),
    );
  }
}

