// ignore_for_file: unused_element, unnecessary_cast

import 'network_configuration_response.dart';
import 'storage_configuration_response.dart';
import 'time_configuration_response.dart';
import 'web_proxy_configuration_response.dart';

/// Device configuration.
class TargetDeviceConfigurationResponse {
  /// Hostname of the device.
  final String? hostName;
  /// Network configuration.
  final NetworkConfigurationResponse? network;
  /// Storage configuration.
  final StorageConfigurationResponse? storage;
  /// Time configuration.
  final TimeConfigurationResponse? time;
  /// Web proxy configuration.
  final WebProxyConfigurationResponse? webProxy;

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
      'network': ?network == null ? null : network!.toMap(),
      'storage': ?storage == null ? null : storage!.toMap(),
      'time': ?time == null ? null : time!.toMap(),
      'webProxy': ?webProxy == null ? null : webProxy!.toMap(),
    };
  }

  factory TargetDeviceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TargetDeviceConfigurationResponse(
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      network: map['network'] == null ? null : NetworkConfigurationResponse.fromMap((map['network'] as Map).cast<String, dynamic>()),
      storage: map['storage'] == null ? null : StorageConfigurationResponse.fromMap((map['storage'] as Map).cast<String, dynamic>()),
      time: map['time'] == null ? null : TimeConfigurationResponse.fromMap((map['time'] as Map).cast<String, dynamic>()),
      webProxy: map['webProxy'] == null ? null : WebProxyConfigurationResponse.fromMap((map['webProxy'] as Map).cast<String, dynamic>()),
    );
  }
}

