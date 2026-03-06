// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_dog_configuration.dart';
import 'otlp_configuration.dart';

/// Configuration of Open Telemetry destinations
class DestinationsConfiguration {
  /// Open telemetry datadog destination configuration
  final pulumi.Input<DataDogConfiguration>? dataDogConfiguration;
  /// Open telemetry otlp configurations
  final pulumi.Input<List<OtlpConfiguration>>? otlpConfigurations;

  /// Creates a new [DestinationsConfiguration].
  /// [dataDogConfiguration] Open telemetry datadog destination configuration
  /// [otlpConfigurations] Open telemetry otlp configurations
  const DestinationsConfiguration({
    this.dataDogConfiguration,
    this.otlpConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDogConfiguration': ?pulumi.Input.mapOptionalInputValue<DataDogConfiguration, Map<String, dynamic>>(dataDogConfiguration, (value) => value.toMap()),
      'otlpConfigurations': ?pulumi.Input.mapOptionalInputValue<List<OtlpConfiguration>, List<Map<String, dynamic>>>(otlpConfigurations, (value) => pulumi.Input.encodeList<OtlpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DestinationsConfiguration.fromMap(Map<String, dynamic> map) {
    return DestinationsConfiguration(
      dataDogConfiguration: (() { final guardedValue = map['dataDogConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataDogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      otlpConfigurations: (() { final guardedValue = map['otlpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OtlpConfiguration>(guardedValue, (value) => OtlpConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

