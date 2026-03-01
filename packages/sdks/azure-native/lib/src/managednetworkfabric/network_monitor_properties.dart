// ignore_for_file: unused_element, unnecessary_cast

import 'bmp_configuration_properties.dart';

/// Network Monitor Properties defines the properties of the resource.
class NetworkMonitorProperties {
  /// Switch configuration description.
  final String? annotation;
  /// BMP Configurations for the Network Fabric.
  final BmpConfigurationProperties? bmpConfiguration;

  /// Creates a new [NetworkMonitorProperties].
  /// [annotation] Switch configuration description.
  /// [bmpConfiguration] BMP Configurations for the Network Fabric.
  NetworkMonitorProperties({
    this.annotation,
    this.bmpConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'bmpConfiguration': ?bmpConfiguration == null ? null : bmpConfiguration!.toMap(),
    };
  }

  factory NetworkMonitorProperties.fromMap(Map<String, dynamic> map) {
    return NetworkMonitorProperties(
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      bmpConfiguration: map['bmpConfiguration'] == null ? null : BmpConfigurationProperties.fromMap((map['bmpConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

