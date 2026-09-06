// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_dog_configuration_response.dart';
import 'otlp_configuration_response.dart';

/// Configuration of Open Telemetry destinations
class DestinationsConfigurationResponse {
  /// Open telemetry datadog destination configuration
  final pulumi.Input<DataDogConfigurationResponse?>? dataDogConfiguration;
  /// Open telemetry otlp configurations
  final pulumi.Input<List<OtlpConfigurationResponse>?>? otlpConfigurations;

  /// Creates a new [DestinationsConfigurationResponse].
  /// [dataDogConfiguration] Open telemetry datadog destination configuration
  /// [otlpConfigurations] Open telemetry otlp configurations
  const DestinationsConfigurationResponse({
    this.dataDogConfiguration,
    this.otlpConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDogConfiguration': ?pulumi.Input.mapOptionalInputValue<DataDogConfigurationResponse, Map<String, dynamic>>(dataDogConfiguration, (value) => value.toMap()),
      'otlpConfigurations': ?pulumi.Input.mapOptionalInputValue<List<OtlpConfigurationResponse>, List<Map<String, dynamic>>>(otlpConfigurations, (value) => pulumi.Input.encodeList<OtlpConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DestinationsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DestinationsConfigurationResponse(
      dataDogConfiguration: (() { final guardedValue = map['dataDogConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataDogConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      otlpConfigurations: (() { final guardedValue = map['otlpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OtlpConfigurationResponse>(guardedValue, (value) => OtlpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
