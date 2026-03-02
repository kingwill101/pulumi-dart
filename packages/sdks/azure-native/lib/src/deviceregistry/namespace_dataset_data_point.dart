// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the dataset data point properties.
class NamespaceDatasetDataPoint {
  /// Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final pulumi.Input<String>? dataPointConfiguration;
  /// The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  final pulumi.Input<String> dataSource;
  /// The name of the data point.
  final pulumi.Input<String> name;
  /// URI or type definition ID.
  final pulumi.Input<String>? typeRef;

  /// Creates a new [NamespaceDatasetDataPoint].
  /// [dataPointConfiguration] Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [dataSource] The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  /// [name] The name of the data point.
  /// [typeRef] URI or type definition ID.
  NamespaceDatasetDataPoint({
    this.dataPointConfiguration,
    required this.dataSource,
    required this.name,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPointConfiguration': ?dataPointConfiguration,
      'dataSource': dataSource,
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceDatasetDataPoint.fromMap(Map<String, dynamic> map) {
    return NamespaceDatasetDataPoint(
      dataPointConfiguration: map['dataPointConfiguration'] == null ? null : (map['dataPointConfiguration'] as String).input(),
      dataSource: (map['dataSource'] as String).input(),
      name: (map['name'] as String).input(),
      typeRef: map['typeRef'] == null ? null : (map['typeRef'] as String).input(),
    );
  }
}

