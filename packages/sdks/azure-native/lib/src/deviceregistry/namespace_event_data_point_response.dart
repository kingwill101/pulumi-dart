// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the event data point properties.
class NamespaceEventDataPointResponse {
  /// Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final pulumi.Input<String>? dataPointConfiguration;
  /// The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  final pulumi.Input<String> dataSource;
  /// The name of the data point.
  final pulumi.Input<String> name;

  /// Creates a new [NamespaceEventDataPointResponse].
  /// [dataPointConfiguration] Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [dataSource] The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  /// [name] The name of the data point.
  const NamespaceEventDataPointResponse({
    this.dataPointConfiguration,
    required this.dataSource,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPointConfiguration': ?dataPointConfiguration,
      'dataSource': dataSource,
      'name': name,
    };
  }

  factory NamespaceEventDataPointResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceEventDataPointResponse(
      dataPointConfiguration: (() { final guardedValue = map['dataPointConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: pulumi.Input.fromValue(map['dataSource'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
