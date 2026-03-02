// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the data point properties.
class DataPointResponse {
  /// Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final pulumi.Input<String>? dataPointConfiguration;
  /// The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  final pulumi.Input<String> dataSource;
  /// The name of the data point.
  final pulumi.Input<String> name;
  /// An indication of how the data point should be mapped to OpenTelemetry.
  final pulumi.Input<String>? observabilityMode;

  /// Creates a new [DataPointResponse].
  /// [dataPointConfiguration] Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [dataSource] The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  /// [name] The name of the data point.
  /// [observabilityMode] An indication of how the data point should be mapped to OpenTelemetry.
  DataPointResponse({
    this.dataPointConfiguration,
    required this.dataSource,
    required this.name,
    this.observabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPointConfiguration': ?dataPointConfiguration,
      'dataSource': dataSource,
      'name': name,
      'observabilityMode': ?observabilityMode,
    };
  }

  factory DataPointResponse.fromMap(Map<String, dynamic> map) {
    return DataPointResponse(
      dataPointConfiguration: map['dataPointConfiguration'] == null ? null : (map['dataPointConfiguration'] as String).input(),
      dataSource: (map['dataSource'] as String).input(),
      name: (map['name'] as String).input(),
      observabilityMode: map['observabilityMode'] == null ? null : (map['observabilityMode'] as String).input(),
    );
  }
}

