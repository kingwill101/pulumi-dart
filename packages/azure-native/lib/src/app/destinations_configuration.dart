// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_dog_configuration.dart';
import 'otlp_configuration.dart';

/// Configuration of Open Telemetry destinations
class DestinationsConfiguration {
  /// Open telemetry datadog destination configuration
  final DataDogConfiguration? dataDogConfiguration;
  /// Open telemetry otlp configurations
  final List<OtlpConfiguration>? otlpConfigurations;

  /// Creates a new [DestinationsConfiguration].
  /// [dataDogConfiguration] Open telemetry datadog destination configuration
  /// [otlpConfigurations] Open telemetry otlp configurations
  DestinationsConfiguration({
    this.dataDogConfiguration,
    this.otlpConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDogConfiguration': ?dataDogConfiguration == null ? null : dataDogConfiguration!.toMap(),
      'otlpConfigurations': ?otlpConfigurations == null ? null : pulumi.Input.encodeList<OtlpConfiguration, Map<String, dynamic>>(otlpConfigurations!, (value) => value.toMap()),
    };
  }

  factory DestinationsConfiguration.fromMap(Map<String, dynamic> map) {
    return DestinationsConfiguration(
      dataDogConfiguration: map['dataDogConfiguration'] == null ? null : DataDogConfiguration.fromMap((map['dataDogConfiguration'] as Map).cast<String, dynamic>()),
      otlpConfigurations: map['otlpConfigurations'] == null ? null : pulumi.Input.decodeList<OtlpConfiguration>(map['otlpConfigurations'], (value) => OtlpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

