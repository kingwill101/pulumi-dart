// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_dog_configuration_response.dart';
import 'otlp_configuration_response.dart';

/// Configuration of Open Telemetry destinations
class DestinationsConfigurationResponse {
  /// Open telemetry datadog destination configuration
  final DataDogConfigurationResponse? dataDogConfiguration;
  /// Open telemetry otlp configurations
  final List<OtlpConfigurationResponse>? otlpConfigurations;

  /// Creates a new [DestinationsConfigurationResponse].
  /// [dataDogConfiguration] Open telemetry datadog destination configuration
  /// [otlpConfigurations] Open telemetry otlp configurations
  DestinationsConfigurationResponse({
    this.dataDogConfiguration,
    this.otlpConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDogConfiguration': ?dataDogConfiguration == null ? null : dataDogConfiguration!.toMap(),
      'otlpConfigurations': ?otlpConfigurations == null ? null : pulumi.Input.encodeList<OtlpConfigurationResponse, Map<String, dynamic>>(otlpConfigurations!, (value) => value.toMap()),
    };
  }

  factory DestinationsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DestinationsConfigurationResponse(
      dataDogConfiguration: map['dataDogConfiguration'] == null ? null : DataDogConfigurationResponse.fromMap((map['dataDogConfiguration'] as Map).cast<String, dynamic>()),
      otlpConfigurations: map['otlpConfigurations'] == null ? null : pulumi.Input.decodeList<OtlpConfigurationResponse>(map['otlpConfigurations'], (value) => OtlpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

