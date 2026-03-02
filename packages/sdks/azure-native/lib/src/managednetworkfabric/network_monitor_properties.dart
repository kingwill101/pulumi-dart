// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bmp_configuration_properties.dart';

/// Network Monitor Properties defines the properties of the resource.
class NetworkMonitorProperties {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// BMP Configurations for the Network Fabric.
  final pulumi.Input<BmpConfigurationProperties>? bmpConfiguration;

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
      'bmpConfiguration': ?pulumi.Input.mapOptionalInputValue<BmpConfigurationProperties, Map<String, dynamic>>(bmpConfiguration, (value) => value.toMap()),
    };
  }

  factory NetworkMonitorProperties.fromMap(Map<String, dynamic> map) {
    return NetworkMonitorProperties(
      annotation: map['annotation'] == null ? null : (map['annotation']! as String).input(),
      bmpConfiguration: map['bmpConfiguration'] == null ? null : (BmpConfigurationProperties.fromMap((map['bmpConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

